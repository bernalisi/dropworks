class Venue < ApplicationRecord
  # database relationships
  belongs_to :user
  has_many_attached :photos
  # has_many :reviews, through: :bookings
  has_many :bookings, dependent: :destroy
  has_many  :favorites, dependent: :destroy
  has_many  :opening_hours, dependent: :destroy

  # input validations for new instances
  validates :name, presence: true
  validates :address, presence: true

  # mapbox scripts
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # pg_search scripts
  include PgSearch::Model
  pg_search_scope :search_by_name_and_address,
  against: [ :name, :address ],
  using: {
    tsearch: { prefix: true }
  }
  # If we wanna use current location in realm life we need to pass to distance_to 2 arguments (user_latitude, user_longtitude)
  def distance_to
    distance_km = Geocoder::Calculations.distance_between(
      [latitude, longitude],
      # Hardcoded IP Le Wagon address
      [52.50703626587969, 13.391801861290157]
    )
    # Convert distance to km if it more than 1 and round it to one decimal
    if distance_km >= 1
      return "#{distance_km.round(1)} km"
    else
      distance_m = distance_km * 1000
      return "#{distance_m.to_int} m"
    end
  end

  def average_rating
    ratings = []
    self.bookings.each do |booking|
      if booking.review
        ratings.push(booking.review.rating)
      end
    end

    return nil if ratings.empty?

    return (ratings.sum / ratings.length)
  end
  public :average_rating
end
