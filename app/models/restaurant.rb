class Restaurant < ApplicationRecord
    belongs_to :category
    has_many :reviews
    validates :name, uniqueness: true, presence: true
  
    def average 
        self.reviews.average(:rating).to_f
    end
end
