class Dose < ApplicationRecord
  validates :description, :cocktail, :ingredient, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }
  validates :description, presence: true
  validates :ingredient, presence: true

  belongs_to :cocktail
  belongs_to :ingredient
end
