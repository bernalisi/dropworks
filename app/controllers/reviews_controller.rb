class ReviewsController < ApplicationController
  before_action :define_booking, only: %i[new create edit update]

  def new
    @review = Review.new()
    @booking = Booking.find(params[:booking_id])
    @venue= @booking.venue
  end

  def create
    @review = Review.new(review_params)
    @review.booking_id = @booking.id
    @review.user_id = current_user.id
    @venue = Venue.find(@booking.venue_id)

    if @review.save
      redirect_to venue_path(@venue)
    else
      render :new
    end
  end

  def edit

    @review = @booking.review

  end

  def update
     @review = @booking.review
    if @review.update(review_params)
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def define_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:content, :user_id, :rating, photos: [])
  end
end
