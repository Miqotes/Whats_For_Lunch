class Restaurant < ApplicationRecord
    belongs_to :category
    has_many :reviews
    validates :name, uniqueness: true, presence: true

    def average_rating
        Restaurant.average()
    end
end
