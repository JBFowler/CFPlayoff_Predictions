class Team < ActiveRecord::Base
  has_many :post_teams
  has_many :posts, through: :post_teams
end