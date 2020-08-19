class RestaurantsController < ApplicationController
    def index

    end
    
    def new 
        @restaurant = Restaurant.new
    end

    def show 
        @restaurant = Restaurant.find(params[:id])
    end

end
