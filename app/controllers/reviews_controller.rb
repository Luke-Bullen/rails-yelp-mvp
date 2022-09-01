class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[new create]
  def create
    @review = Review.new(review_params)
    # @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@review.restaurant)
    else
      render "restaurants/show"
    end
  end

  # def new
  #   @review = Review.new
  #   # @restaurant = Restaurant.find(params[:restaurant_id])
  # end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
