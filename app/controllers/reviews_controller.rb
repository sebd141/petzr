class ReviewsController < ApplicationController
  def index
    @review = Review.all
  end

  def new
    @recipient = User.find(params[:user_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @recipient = User.find(params[:user_id])
    @review.recipient = @recipient
    @review.writer = current_user
    if @review.save
      redirect_to user_path(@review.recipient)
    else
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  # def average_rating
  #   @recipient = User.find(params[:user_id])

  # end

  private


  def review_params
    params.require(:review).permit(:rating, :comment)
  end

end
