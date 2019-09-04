class Rating < ApplicationRecord
    has_many :pizzas
    has_many :users, through: :pizzas
    validates :stars, :numericality => { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5, message: "shouldn't be blank and should be a number between 1 and 5" }

end
