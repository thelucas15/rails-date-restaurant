class Evaluation < ApplicationRecord
  belongs_to :match_list
  has_many :users
  belongs_to :restaurant
  belongs_to :selector, foreign_key: :selector_id, class_name: "User"
  belongs_to :selectee, foreign_key: :selectee_id, class_name: "User"
  has_one :reservation
# not sure
end
