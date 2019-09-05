class Rating < ApplicationRecord
    has_many :pizzas
    has_many :users, through: :pizzas
    validates :stars, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5, message: "shouldn't be blank and should be a number between 0 and 5" }

end
