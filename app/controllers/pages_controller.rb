class PagesController < ApplicationController
  def home
  end

  def manage
    @requests = Booking.joins(:listing).where(listings: {user_id: current_user.id})
  end

  def confirm
  end
end
