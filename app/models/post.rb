class Post < ActiveRecord::Base
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  has_many :post_teams
  has_many :teams, through: :post_teams

  validates :winner, presence: true
  validates_uniqueness_of :seed_one, scope: [:seed_two, :seed_three, :seed_four]
  validates_uniqueness_of :seed_two, scope: [:seed_one, :seed_three, :seed_four]
  validates_uniqueness_of :seed_three, scope: [:seed_one, :seed_two, :seed_four]
  validates_uniqueness_of :seed_four, scope: [:seed_one, :seed_two, :seed_three]
end