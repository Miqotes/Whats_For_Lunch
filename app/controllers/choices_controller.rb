class ChoicesController < ApplicationController
    before_action :authorized
    before_action :current_user
    before_action :restaurant_names, only: [:random]
    def new 
        @choice = Choice.new
    end

    def create 
        @choice = Choice.new(choice_params)
        @choice.user_id = session[:user_id]
        if @choice.save 
            redirect_to @choice
        else 
            render 'new'
        end
    end

    def edit 
    end
    
    def show 
    @choice = Choice.find(params[:id])  
    end

    def random
    @random_restaurant = @restaurant_array.sample

    end

    private
    def choice_params
        params.require(:choice).permit(:preference, :user_id,:category_id)
    end
    def restaurant_names
        @restaurant_array = []
        @choice_category = Choice.last.category
        @choice_category.restaurants.each {|restaurant| @restaurant_array << restaurant.name} 
    end

end