class Review < ApplicationRecord
  belongs_to :booking

  validates :name, presence: true
  validates :comment, presence: true
end
