class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates_numericality_of :rating, only_integer: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
