class User < ApplicationRecord
    has_secure_password

    has_many :pizzas
    has_many :ratings, through: :pizzas
end
