class Drink < ApplicationRecord
    belongs_to :pizza, optional: true         
end
