class Meat < ApplicationRecord
    belongs_to :pizza, optional: true         
end
