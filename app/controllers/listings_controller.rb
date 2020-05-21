class ListingsController < ApplicationController
  def index

    @listings = Listing.geocoded # returns flats with coordinates

    @markers = @listings.map do |listing|
      {
        lat: listing.latitude,
        lng: listing.longitude
      }
    end
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user_id = current_user.id
    if @listing.save
      redirect_to listings_path
    else
      render 'new'
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :url, :price, :capacity, :description, :category, :address, :city)
  end
end
