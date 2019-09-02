class Dip < ApplicationRecord
    belongs_to :pizza, optional: true         
end
