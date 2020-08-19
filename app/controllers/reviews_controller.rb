class ReviewsController < ApplicationController
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
    def 
        params.require(:review).permit(:user_id, :restaurant_id, :rating, :comment)
    end
end
