class User < ApplicationRecord
    has_secure_password

    has_many :pizzas
    has_many :ratings, through: :pizzas

    validates :name,  uniqueness: true
    validates :email, uniqueness: true, format: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

    validate :name_email_req

    def name_email_req
      if [self.name, self.email].reject(&:blank?).size == 0
        errors[:base] << ("Please submit all a name and email to sign up.")
      end
    end 


end
