class User < ActiveRecord::Base
  has_many :posts

  has_secure_password validations: false
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create, length: {minimum: 6}  
  validates :location, presence: true
  validates :favorite_team, presence: true
end