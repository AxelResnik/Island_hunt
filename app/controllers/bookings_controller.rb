class BookingsController < ApplicationController
  before_action :find_island, only: [:new, :create]
  # before_action :authorize_booking
  def index
    @bookings = policy_scope(Booking).where(user: current_user)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.island = @island
    authorize @booking
    if @booking.save!
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    redirect_to bookings_path, notice: "Booking for #{@booking.island} was successfully destroyed."
    @booking.destroy
  end

  private

  def find_island
    @island = Island.find(params[:island_id])
    # authorize @island
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
