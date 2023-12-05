class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

  has_many :venues, dependent: :destroy
  has_many :bookings
  has_many :reviews, through: :bookings

  # Need to have it for counting distance using map
  include Geocoder

  # Uncomment in case we wanna use in future current user location.
  # This method takes a user's request object, attempts to retrieve their IP address,
  # and uses the Geocoder gem to obtain the latitude and longitude of their location.
  # If successful, it returns a tuple containing the latitude and longitude.
  # Note: Ensure the 'geocoder' gem is properly configured, and handle cases
  # where the location cannot be determined gracefully.

  # def user_location(request)
  #   # ip_address = request.remote_ip
  #   location = Geocoder.search(ip_address).first
  #   return location.latitude, location.longitude if location
  # end
end
