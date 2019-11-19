class Booking < ApplicationRecord
  belongs_to :student, class_name: 'User'
  belongs_to :lesson

  validates :date, presence: true
end
