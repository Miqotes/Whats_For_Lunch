class Restaurant < ApplicationRecord
    belongs_to :category
    validates :name, uniqueness: true, presence: true
end
