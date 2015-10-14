class BeardsController < ApplicationController
  def index
    @beards = Beard.all
  end

  def show
    @beard = Beard.find(params[:id])
  end
end
