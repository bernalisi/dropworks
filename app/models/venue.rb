class Venue < ApplicationRecord

  #database relationships
  belongs_to :user
  has_many_attached :photos
#  has_many :reviews, through: :bookings
  has_many :bookings, dependent: :destroy
  has_many  :favorites, dependent: :destroy
  has_many  :opening_hours, dependent: :destroy

  #input validations for new instances
  validates :name, presence: true
  validates :address, presence: true

  #mapbox scripts
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  #pg_search scripts
  # include PgSearch::Model
  # pg_search_scope :search_by_name_and_address,
  # against: [ :name, :address ],
  # using: {
  #   tsearch: { prefix: true }
  # }
end
