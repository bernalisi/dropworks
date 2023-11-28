class BookingsController < ApplicationController
  before_action :define_venue, only: %i[new create show edit update destroy]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.venue = @venue
    @booking.user = current_user

    if @booking.save
      redirect_to dashboard_path(@venue), notice: "You successfully booked #{@venue.name} venue 🎉"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def show
  #   @booking = Booking.find(params[:id])
  # end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def define_venue
    @venue = Venue.find(params[:venue_id])
  end

  def booking_params
    params.require(:booking).permit(:booking_date)
  end
end
