class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  # def index
  #   @venues = Venue.all
  # end

  def home
    @venues = Venue.all
    @markers = @venues.geocoded.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude,
        id: venue.id,
        info_window_html: render_to_string(partial: "venues/info_window", locals: { venue: venue }),
        marker_html: render_to_string(partial: "venues/marker", locals: { venue: venue })
      }
    end
  end

  def dashboard
    @user_bookings = current_user.bookings
    @user_venues = current_user.venues
    @user_reviews = current_user.reviews
  end

  def checkin

  end

end
