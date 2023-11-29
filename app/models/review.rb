class Review < ApplicationRecord
  has_many_attached :photos
  belongs_to :booking
end
