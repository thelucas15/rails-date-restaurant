class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :match_lists
  validates :username, presence: true, uniqueness: true
  validates :age, presence: true
  validates :age_pref_start, presence: true
  validates :age_pref_end, presence: true
  validates :description, presence: true
  validates :hash_tag_pref, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
