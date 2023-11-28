class VenuesController < ApplicationController
  before_action :set_venue, only: %i[show edit update destroy]

  def index
    @venues = Venue.all
  end

  def show
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

  private

  def venue_params
    params.require(:venue).permit(:price, :name, :address, :overview, :rating, :image_url)
  end

  def set_venue
    @venue = Venue.find(params[:id])
  end
end
