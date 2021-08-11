class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show]
  # GET "restaurants" (SEE LIST OF ALL RESTAURANTS)
  def index
    @restaurants = Restaurant.all
  end

  # GET "restaurants/38" (SHOW SPECIFIC RESTAURANT WITH REVIEWS AND DETAILS)
  def show
  end

  # GET "restaurants/new" (SEE NEW FORM)
  def new
    @restaurant = Restaurant.new
  end

  # POST "restaurants" (SUBMIT NEW FORM AND BE REDIRECTED TO SHOW VIEW OF THAT RESTAURANT)
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant), notice: 'The new restaurant was successfully created!'
    else
      render :new
    end
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
