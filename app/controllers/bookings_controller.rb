class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
  end

  def new
    @listing = Listing.find(params[:listing_id])
    @booking = Booking.new()
  end


  private

  def booking_params
    params.require(:booking).permit(:title)
  end
end
