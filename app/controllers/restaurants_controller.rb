class RestaurantsController < ApplicationController
    
    
    def index

    end
    
    def new 
        @restaurant = Restaurant.new
    end

    def show 

        @restaurant = Restaurant.find(params[:id])
        r = @restaurant.reviews
        @average = r.average(:rating).to_f

    end
    # def average_rating
    #     @restaurant = Restaurant.find(params[:id])
    #     found_review = @restaurant.reviews
    #     @average_r = found_review.average(:rating).to_f
    # end
    private

    
end
