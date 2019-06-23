class BookingsController < ApplicationController
  before_action :find_island, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    raise
    @booking = Booking.new(booking_params)
    @booking.island = @island
    @booking.save
  end

  def destroy
  end

  def dashboard
  end

  private
  def find_island
    @island = Island.find(params[:island_id])
  end

  def booking_params
    params.require(:booking).permit(:date, :user_id)
  end
end
