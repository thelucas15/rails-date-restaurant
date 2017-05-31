class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

  has_many :match_lists
  has_many :messages
  has_many :conversations, foreign_key: :sender_id
  validates :username, presence: true, uniqueness: true, on: :update
  validates :age, presence: true, on: :update
  validates :age_pref_start, presence: true, on: :update
  validates :age_pref_end, presence: true, on: :update
  validates :description, presence: true, on: :update
  validates :hash_tag_pref, presence: true, on: :update
  validates :email, presence: true, on: :update
  validates :password, presence: true, on: :update

  def self.find_for_facebook_oauth(auth)
    user_params = auth.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    user_params = user_params.to_h

    user = User.where(provider: auth.provider, uid: auth.uid).first
    user ||= User.where(email: auth.info.email).first # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end
    return user
  end
end
