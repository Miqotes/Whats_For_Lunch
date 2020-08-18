class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    has_many :choices 
    has_many :categories, through: :choices 
    has_many :restaurants, through: :categories 
    has_many :reviews
    has_many :reviewed_restaurants, through: :reviews, source: :restaurant
    # has_many :reviews
    has_secure_password 

    
end
