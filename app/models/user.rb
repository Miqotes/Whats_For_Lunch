class User < ApplicationRecord

    has_many :choices 
    has_many :categories, through: :choices 
    has_many :restaurants, through: :categories 
    # has_many :reviews
    has_secure_password 
end
