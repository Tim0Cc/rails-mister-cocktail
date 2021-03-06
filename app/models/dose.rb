class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  # validates_associated :cocktail
  # validates_associated :ingredient
  # validates_uniqueness_of :cocktail, scope: :ingredient  <- old syntax
  validates :cocktail, uniqueness: { scope: :ingredient }
end
