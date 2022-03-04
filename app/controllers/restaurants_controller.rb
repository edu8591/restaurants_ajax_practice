class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show destroy]
  def index
    @restaurants = Restaurant.all
    respond_to do |format|
      format.html
      format.json { render json: { restaurants: @restaurants } }
    end
  end

  def show
    @review = Review.new
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
