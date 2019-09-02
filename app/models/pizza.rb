class Pizza < ApplicationRecord
    belongs_to :user
    belongs_to :rating
    
  
    has_many :meats
    has_many :cheeses
    has_many :dips
    has_many :drinks
    has_many :toppings


    validates :vet_id, presence: true
    validates_associated :vet

    #accepts_nested_attributes_for :rating



    def rating_attributes=(attributes)
        rating = Rating.find_or_create_by(attributes)
        self.rating = rating if rating.valid? || !self.rating
     end


end
