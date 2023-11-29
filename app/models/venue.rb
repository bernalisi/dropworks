class Venue < ApplicationRecord
  belongs_to :user
  has_many :reviews, through: :bookings
  has_many :bookings, dependent: :destroy
  has_many  :favorites, dependent: :destroy
  has_many  :opening_hours, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
