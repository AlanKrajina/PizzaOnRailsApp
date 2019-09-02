class Cheese < ApplicationRecord
    belongs_to :pizza, optional: true         
end
