class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  # A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
