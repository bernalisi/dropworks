class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.venue = @venue
    @booking.user = current_user

    if booking.save
      redirect_to new_venue_booking_path(@venue), notice: "You successfully booked #{@venue.name} venue 🎉"
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

  def booking_params
    params.require(:booking).permit(:booking_date)
  end
end
