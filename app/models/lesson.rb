class Lesson < ApplicationRecord
  has_many :bookings

  validates :name, presence: true
  validates :price, presence: true, numericality: true
  validates :location, presence: true
  validates :description, presence: true
end
