class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @venues = Venue.all
    @markers = @venues.geocoded.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude,
        info_window_html: render_to_string(partial: "venues/info_window", locals: { venue: venue }),
        marker_html: render_to_string(partial: "venues/marker", locals: { venue: venue })
      }
    end
  end

  def dashboard
    @user_bookings = current_user.bookings
    @user_venues = current_user.venues
  end
end
