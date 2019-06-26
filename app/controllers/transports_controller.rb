class TransportsController < ApplicationController
  before_action :island_booking, only: [:new, :create]

  def index
    @transports = policy_scope(Transport)
  end

  def new
    @transport = Transport.new
    authorize @transport
    index
  end

  def create
    raise
    @transport = Transport.new(transport_params)
    @transport.save
  end

  def show
  end

  private

  def transport_params
    params.require(:island).permit(:name, :description, :category, :price, :photo)
  end

  def island_booking
    @island = Island.find(params[:island_id])
    @booking = Booking.find(params[:id])
    authorize @island
    authorize @booking
  end
end
