class CategoriesController < ApplicationController
    def index 
        @category = Category.all
    end

    def show 
        @category = Category.find(params[:id])
    end

    def restaurant_names
        @restaurant_array = []
        choice_category = Choice.last.category
        choice_category.restaurants.each {|restaurant| @restaurant_array << restaurant.name} 
        
    end

    def random_selection
        random_restaurant = @restaurant_array.sample
    end
end

private 
def category_params
    params.require(:category).permit(:name)
end