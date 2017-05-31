class Restaurant < ApplicationRecord
  FOOD_TYPES = ["mexican", "italian", "japanese", "american", "french", "portuguese"]

  has_many :match_lists
  has_many :evaluations
  has_many :reservations
  has_many :users, through: :match_lists
  validates :name, presence: true
  validates :address, presence: true
  validates :food_type, inclusion: { in: FOOD_TYPES, allow_nil: false }

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
