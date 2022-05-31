class ReviewsController < ApplicationController
  def index
    @review = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.writer = current_user
    @review.recipient = User.find(params[:user_id])
    if @review.save
      redirect_to user_path(@review.recipient)
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
