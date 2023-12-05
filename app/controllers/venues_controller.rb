class VenuesController < ApplicationController
  before_action :set_venue, only: %i[show edit update destroy favorite]

  def index
    # scrip 5-9 responsible for search bar feature
    if params[:query].present?
      @venues = Venue.search_by_name_and_address(params[:query])
    else
      @venues = Venue.all
    end
  end

  def show
    @booking = Booking.find_by(venue: @venue)
    @opening_hours = @venue.opening_hours
    # Get the current date and time
    now = Time.now

    # Get the day of the week (Sunday is 0 and Saturday is 6)
    current_day_index = now.wday

    # List of days
    days_of_week = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

    # Get the current day
    @current_day = days_of_week[current_day_index]

    # The logic to fetch and display the venue goes here
    @venue = Venue.find(params[:id])

    @current_user_booking = @venue.bookings.find_by(user: current_user)
    @has_reviewed = @current_user_booking&.review.present?
    # @is_venue_open = @current_day_opening_hour.present? && venue_open?(@current_day_opening_hour)
    # Find the current day
    current_day_name = Time.now.strftime('%A')

    # Find the venue's opening hours for the current day
    # @current_day_opening_hour = Venue.last.opening_hours.find_by(day: current_day_name)
      @today_check = @venue.opening_hours.select do |opening_hour|
        current_day_name == opening_hour.day.capitalize
      end.first
    @open =  Time.now.strftime('%H:%M') <= @today_check.closing_time.strftime('%H:%M') ? { text: "open", color: "green" } : { text:"close", color: "red" }
    # puts "Current Day: #{current_day_name}"
    # puts "Opening Hour: #{@current_day_opening_hour&.inspect}"
    # puts "Current Day: #{Time.now.strftime('%A')}"
    # puts "Opening Hour: #{@current_day_opening_hour&.inspect}"
    # puts "Is Venue Open? #{@is_venue_open}"
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user_id = current_user.id
    if @venue.save
      redirect_to venues_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @venue.update(venue_params)
      redirect_to venues_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @venue.destroy
    redirect_to venues_path
  end

  # member_route
  def favorite
    @favorite = Favorite.find_by(venue: @venue)
    if @favorite
      @favorite.update(liked: !@favorite.liked)
    else
      @favorite = Favorite.new
      @favorite.venue = @venue
      @favorite.user = current_user
      @favorite.liked = true
      @favorite.save!
    end
  end

  def qrcode
    @qrcode = RQRCode::QRCode.new("#{request.original_url}/bookings")
    @svg = @qrcode.as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      standalone: true
    )
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address, :overview, image_urls: [], photos: [])
  end

  def set_venue
    @venue = Venue.find(params[:id])
  end

  def venue_open?(opening_hour)
    current_time = Time.now.strftime('%H:%M:%S')
    current_time.between?(opening_hour.open_time, opening_hour.closing_time)
  end
end
