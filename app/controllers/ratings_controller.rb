class RatingsController < ApplicationController
    has_many :pizzas
    has_many :users, through: :pizzas
    
  #  accepts_nested_attributes_for :pizzas
    #    validates :stars, :comment, presence: true

end
