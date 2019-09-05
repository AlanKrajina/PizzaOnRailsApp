class RatingsController < ApplicationController
    has_many :pizzas
    has_many :users, through: :pizzas
end
