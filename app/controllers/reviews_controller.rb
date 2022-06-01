class ReviewsController < ApplicationController
  def index
    @review = Review.all
  end

  def new
    @receiver = User.find(params[:user_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @receiver = User.find(params[:user_id])
    @review.receiver = @receiver
    @review.writer = current_user
    if @receiver.save
      redirect_to user_path(@review.receiver)
    else
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  private


  def review_params
    params.require(:review).permit(:rating, :comment)
  end

end
