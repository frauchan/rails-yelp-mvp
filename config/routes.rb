Rails.application.routes.draw do
  # A visitor can see the list of all restaurants.
  # GET "restaurants"
  # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  # GET "restaurants/new"
  # POST "restaurants"
  # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  # GET "restaurants/38"
  resources :restaurants, only: [:new, :create, :index, :show] do
    resources :reviews, only: [:new, :create]
  end
  # A visitor can add a new review to a restaurant
  # GET "restaurants/38/reviews/new"
  # POST "restaurants/38/reviews"
end
