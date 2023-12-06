class Review < ApplicationRecord
  has_many_attached :photos
  belongs_to :booking
  belongs_to :user

  # Following Figma we don't need validation for rating
  # validates :content, :rating, presence: true
end
