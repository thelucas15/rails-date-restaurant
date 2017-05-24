class MatchList < ApplicationRecord
  has_one :restaurant
  belongs_to :user
  validates :start_time, presence: true
  validates :date, presence: true
end
