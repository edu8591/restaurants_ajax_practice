class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
  end

  def destroy
    @restaurant.destroy
    redirect_to root_path
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
