class Pizza < ApplicationRecord
    belongs_to :user
    belongs_to :rating
    
    has_many :meats
    has_many :cheeses
    has_many :dips
    has_many :drinks
    has_many :toppings

    validates :name,  presence: true
    validates :delivery_address,  presence: true

    accepts_nested_attributes_for :rating

    validate :at_least_one_ingredient

    def at_least_one_ingredient
      if [self.meats, self.cheeses, self.dips, self.toppings, self.drinks].reject(&:blank?).size == 0
        errors[:base] << ("Please choose at least one meat, cheese, dip, topping or drink - we don't want to send you empty pizza crust :)")
      end
    end  



end
