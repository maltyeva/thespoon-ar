class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
    # restaurants/6
    # Restaurant.find(6)
  end

  def new
    @restaurant = Restaurant.new
    #<Restaurant id: nil, name: nil, rating: nil, created_at: nil, updated_at: nil, address: nil, chef: nil>
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    #<Restaurant id: nil, name: "Cantina Agave", rating: 3, created_at: nil, updated_at: nil, address: nil, chef: nil>
    @restaurant.save
    # redirect_to restaurant_path(@restaurant)
    redirect_to @restaurant
  end

  def edit
    # get the edit form
  end

  def update
    #save the changes to the database
    # @restaurant.update(params["restaurant"])
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :rating)
  end
end
