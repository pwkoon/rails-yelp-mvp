class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  RATE = [0,1,2,3,4,5]
  validates :rating, inclusion: { in: RATE }, numericality: { only_integer: true }
end
