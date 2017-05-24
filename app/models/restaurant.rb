class Restaurant < ApplicationRecord
  has_many :match_lists
  has_many :evaluations
  has_many :reservations
  has_many :users, through: :match_lists
  validates :name, presence: true
  validates :address, presence: true
  validates :food_type, inclusion: { in: ["mexican", "italian", "japanese", "american", "french"], allow_nil: false }
end
