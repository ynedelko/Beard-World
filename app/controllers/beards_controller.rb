class BeardsController < ApplicationController
  def index
    @beards = Beard.all
  end

  def show
    @beard = Beard.find(params[:id])
  end

  def new
    @beard = Beard.new
  end

  def create
    @beard = Beard.new(beard_params)
    if @beard.save
      redirect_to beards_path
    else
      render :new
    end
  end

  def edit
    @beard = Beard.find(params[:id])
  end

  def update
    @beard = Beard.find(params[:id])
    if @beard.update(beard_params)
      redirect_to beard_path
    else
      render :edit
    end
  end

  private
  def beard_params
    params.require(:beard).permit(:name, :rating, :image_url)
  end
end
