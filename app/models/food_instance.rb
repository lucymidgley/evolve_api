class FoodInstance < ApplicationRecord
  belongs_to :game
  belongs_to :food
end
