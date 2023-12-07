class BookingsController < ApplicationController
  before_action :define_venue, only: %i[new create edit update]

  def new
    @booking = Booking.new
    @booking.venue = @venue
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.venue = @venue
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@venue, @booking), notice: "You successfully booked #{@venue.name} venue 🎉"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])

    #important for show booking from activity
    @user_bookings = current_user.bookings
  end

  def edit
  end

  def update
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def define_venue
    @venue = Venue.find(params[:venue_id])
  end

  def booking_params
    params.require(:booking).permit(:booking_date)
  end
end
