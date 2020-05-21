class ListingsController < ApplicationController
  def index
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
      redirect_to bookings_path
    else
      render 'new'
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :url, :price, :capacity, :description, :category, :address, :city)
  end
end
