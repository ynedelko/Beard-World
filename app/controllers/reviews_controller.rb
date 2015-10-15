class ReviewsController < ApplicationController
  def new
    @beard = Beard.find(params[:beard_id])
    @review = @beard.reviews.new
  end

  def create
    @beard = Beard.find(params[:beard_id])
    @review = @beard.reviews.new(review_params)
    if @review.save
      flash[:notice] = "Success! Let it be hairy!"
      redirect_to beard_path(@beard)
    else
      render :new
    end
  end

  def destroy
    @beard = Beard.find(params[:beard_id])
    @review = @beard.reviews.find(params[:id])
    @review.destroy
    redirect_to beard_path(@beard)
  end

private
  def review_params
    params.require(:review).permit(:user, :text)
  end
end
