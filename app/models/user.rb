class User < ApplicationRecord
    has_secure_password

    has_many :pizzas
    has_many :ratings, through: :pizzas

    validates :name, :email, presence: true
    validates :name,  uniqueness: true
    validates :email, uniqueness: true, format: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

end
