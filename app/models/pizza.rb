class Pizza < ApplicationRecord
    belongs_to :user  
    belongs_to :rating
  
    has_many :meats
    has_many :cheeses
    has_many :dips
    has_many :drinks
    has_many :toppings

end
