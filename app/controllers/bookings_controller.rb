class BookingsController < ApplicationController
  before_action :find_island, only: [:new, :create]
  # before_action :authorize_booking

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    raise
    @booking = Booking.new(booking_params)
    @booking.user = current_user
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
    authorize @island
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
