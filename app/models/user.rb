class User < ApplicationRecord
    has_secure_password

    has_many :pizzas
    has_many :ratings, through: :pizzas

    validates :name,  uniqueness: true
    validates :email, uniqueness: true, format: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

    validate :name_email_req

    def name_email_req
      if [self.name, self.email].reject(&:blank?).size == 0
        errors[:base] << ("Extra info* To create a User all details are needed.")
      end
    end 

    def self.from_omniauth(auth)
      where(email: auth.info.email).first_or_initialize do |user|
        user.name = auth.info.name
        user.email = auth.info.email
        user.password = SecureRandom.hex
      end
    end
end
