class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @booking.traveller = current_traveller
    # @booking.experience = Experience.find(params[:experience_id])
  end


  def create
    @booking = Booking.new(booking_params)
    @booking.traveller = current_traveller
    @booking.experience = Experience.find(params[:experience_id])
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end


  def edit
    @booking = Booking.find(params[:id])
  end


  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end


  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end
end


def booking_params
  params.require(:booking).permit(:checkin, :checkout, :message)
end
