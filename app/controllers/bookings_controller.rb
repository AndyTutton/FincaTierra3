class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end
end
