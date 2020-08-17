class Category < ApplicationRecord
    has_many :choices
    has_many :users, through: :choices
    has_many :restaurants
end
