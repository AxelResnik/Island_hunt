class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @islands = Island.all
  end

  def show
    @island = Island.find(params[:id])
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(islands_params)
    @island.user = current_user
    if @island.save!
      redirect_to island_path(island)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def islands_params
    params.require(:island).permit(:name, :location, :activities, :size, :price, :difficulty, :photo)
  end
end
