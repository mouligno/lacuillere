class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    sanitize_params
    @review = @restaurant.reviews.build(review_params)
    if @review.valid?
      @review.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end

private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def sanitize_params
    params[:review][:rating] = params[:review][:rating].to_i
  end
end
