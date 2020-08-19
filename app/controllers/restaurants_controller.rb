class RestaurantsController < ApplicationController
    before_action :restaurant_reviews, only: [:show]
    
    def index

    end
    
    def new 
        @restaurant = Restaurant.new
    end

    def show 
        @restaurant = Restaurant.find(params[:id])
    end

    private

    def restaurant_reviews
        @restaurant = Restaurant.find(params[:id])
        found_review = @restaurant.reviews
        @average_r = found_review.average(:rating).to_f
    end
end
