class ReviewsController < ApplicationController
  def index
    @review = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.find(params[:writer_id])

  end

  private

  params.require(:review).permit(:rating, :content)

end
