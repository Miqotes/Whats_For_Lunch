class Restaurant < ApplicationRecord
    belongs_to :category
    has_many :reviews
    validates :name, uniqueness: true, presence: true
end
