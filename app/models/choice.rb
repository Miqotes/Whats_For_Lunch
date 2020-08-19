class Choice < ApplicationRecord
    
    belongs_to :user
    belongs_to :category

    def restaurant_names
        choice_category = Choice.last.category
        choice_category.collect {|category| category.restaraunts}
    end
end
