class Rating < ApplicationRecord
    has_many :pizzas
    has_many :users, through: :pizzas

#    validates :stars, :comment, presence: true

end
