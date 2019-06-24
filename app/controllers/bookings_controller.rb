class BookingsController < ApplicationController
  before_action :find_island, only: [:new, :create]
  # before_action :authorize_booking

  def new
    @booking = Booking.new
    @booking.island = @island
    @booking.user = current_user
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
    # authorize @bookings
  end

  def booking_params
    params.require(:booking).permit(:date)
  end
end
