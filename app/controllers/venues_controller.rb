class VenuesController < ApplicationController
  before_action :set_venue, only: %i[show edit update destroy]

  def index
    #scrip 5-9 responsible for search bar feature
    if params[:query].present?
      @venues = Venue.search_by_name_and_address(params[:query])
    else
      @venues = Venue.all
    end
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

  # member_route
  def favorite
    @venue = Venue.find(params[:id])
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

  private

  def venue_params
    params.require(:venue).permit(:name, :address, :overview, image_urls:[], photos: [])
  end

  def set_venue
    @venue = Venue.find(params[:id])
  end
end
