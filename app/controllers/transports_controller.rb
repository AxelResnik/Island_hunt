class TransportsController < ApplicationController
  def index
    @transports = Transport.all
  end

  def show
  end
end
