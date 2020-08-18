class Review < ApplicationRecord
    belongs_to :user
    belongs_to :reviewed_restaurant
end
