class Review < ApplicationRecord
  has_many_attached :photos
  belongs_to :booking
  validates :content, :rating, presence: true
end
