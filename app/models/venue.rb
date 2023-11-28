class Venue < ApplicationRecord
  belongs_to :user
  has_many :reviews, through: :bookings
  has_many :bookings, dependent: :destroy

  validates :price, presence: true
  validates :name, presence: true
  validates :address, presence: true
end
