class Lesson < ApplicationRecord
  has_many :bookings

  validates :name, presence: true
  validates :price, presence: true
  validates :location, presence: true
end
