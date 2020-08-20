class Review < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant
    validates :rating, :numericality => true, :inclusion => {:in => 1..5, :message =>  "must be a number from  1-5."}
end
