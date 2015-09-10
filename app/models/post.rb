class Post < ActiveRecord::Base
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  has_many :post_teams
  has_many :teams, through: :post_teams

  validates :winner, presence: true
  validates :team_ids, length: { is: 4}
  
end