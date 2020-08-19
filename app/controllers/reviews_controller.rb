class ReviewsController < ApplicationController
    before_action :authorized
    before_action :current_user
    before_action :restaurant_choice, only: [:new]
    def new 
        @review = Review.new
    end
    
    def create
        @review = Review.new(review_params)
        @review.user_id = session[:user_id]
        if @review.save 
            redirect_to @review
        else  
            render 'new'
        end
    end

    def show 
        @review = Review.find(params[:id])
    end

    def edit

    end

    def update 

    end

    def destroy 
    end
    private
    def restaurant_choice
        @restaurant_array = []
        @last_choice = @current_user.choices.last
        @rest_choice = @last_choice.restaurant_names.sample
        # @choice_category.restaurants.each {|restaurant| @restaurant_array << restaurant.name} 
    end

    def review_params
        params.require(:review).permit(:user_id, :restaurant_id, :rating, :comment)
    end
end
