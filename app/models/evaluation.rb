class Evaluation < ApplicationRecord
  has_many :match_lists
  has_many :users
  has_one :restaurant
  validates :decision, presence: true
end
