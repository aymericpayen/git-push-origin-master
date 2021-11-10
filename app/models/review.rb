class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, length: { minimum: 5 }
  validates :rating, presence: true, inclusion: { in: (0..5) }, length: { minimum: 1 }, numericality: { only_integer: true }
end
