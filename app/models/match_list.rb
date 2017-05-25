class MatchList < ApplicationRecord
  has_one :restaurant
  belongs_to :user
  validates :start_time, presence: true
  validates :date, presence: true
  validates :restaurant_id, uniqueness: { scope: [:user_id, :date], message: 'You  cant book the same restaurant on the same day' }

end


