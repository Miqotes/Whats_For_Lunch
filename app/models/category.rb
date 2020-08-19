class Category < ApplicationRecord
    has_many :choices
    has_many :users, through: :choices
    has_many :restaurants, dependent: :destroy

    def restaurant_names
        @restaurant_array = []
        choice_category = Choice.last.category
        choice_category.restaurants.each {|restaurant| @restaurant_array << restaurant.name} 
        
    end

    def random_selection
        random_restaurant = @restaurant_array.sample
    end
end
