class Lesson < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :bookings
  has_many :reviews
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :name, presence: true
  validates :price, presence: true, numericality: true
  validates :location, presence: true
  validates :description, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
    against: [:name, :description],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
