class Review < ApplicationRecord
  belongs_to :lesson

  validates :name, presence: true
  validates :comment, presence: true
  validates :stars, presence: true
end
