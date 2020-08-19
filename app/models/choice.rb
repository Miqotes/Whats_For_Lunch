class Choice < ApplicationRecord
    
    belongs_to :user
    belongs_to :category

    def restaurant_names
        @restaurant_array = []
        @choice_category = Choice.last.category
        @choice_category.restaurants.each {|restaurant| @restaurant_array << restaurant.name} 
    end

    def random_selection
        random_restaurant = @restaurant_array.sample
    end
end
