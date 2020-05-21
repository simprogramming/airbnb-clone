class PagesController < ApplicationController
  def home
  end

  def manage
    @requests = Booking.joins(:listing).where(listings: {user_id: current_user.id})
  end

  def confirm
    @requests = Booking.joins(:listing).where(listings: {user_id: current_user.id})
    # @booking = @requests.booking.id
    # find(Booking.find(params[:id])
    # current.user.listings
  end

end
