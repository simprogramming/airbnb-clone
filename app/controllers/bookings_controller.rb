class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)

    redirect_to manage_path
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @listing = Listing.find(params[:listing_id])
    # @user = User.find(params[:user_id])
    @booking = Booking.new()
  end
  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    # @booking.listing_id = params[:listing_id]
    # raise
    if @booking.save
      redirect_to listing_booking_path(@booking.listing_id, @booking.id)
    else
      render 'new'
    end
  end
  private
  def booking_params
    params.require(:booking).permit(:title, :description, :attendance, :start_date, :end_date, :listing_id, :state, :id)
  end
end
