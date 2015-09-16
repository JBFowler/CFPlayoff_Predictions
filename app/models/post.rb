class Post < ActiveRecord::Base
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  has_many :post_teams
  has_many :teams, through: :post_teams

  validates :winner, presence: true
  validates :seed_one, presence: true
  validates :seed_two, presence:true
  validates :seed_three, presence: true
  validates :seed_four, presence: true
  # validate :winner_must_exist_in_playoffs
  # validate :playoff_picks_must_be_unique_from_each_other
  # validates_uniqueness_of :seed_one, scope: [:seed_two, :seed_three, :seed_four]
  # validates_uniqueness_of :seed_two, scope: [:seed_one, :seed_three, :seed_four]
  # validates_uniqueness_of :seed_three, scope: [:seed_one, :seed_two, :seed_four]
  # validates_uniqueness_of :seed_four, scope: [:seed_one, :seed_two, :seed_three]
  def winner_must_exist_in_playoffs
    if (:winner != :seed_one || :winner != :seed_two || :winner != :seed_three || :winner != :seed_four)
      errors.add(:winner, "must also be included as one of your playoff picks.")
    end
  end

  def playoff_picks_must_be_unique_from_each_other
    if (:seed_one == :seed_two || :seed_one == :seed_three || :seed_one == :seed_four || :seed_two == :seed_three || :seed_two == :seed_four || :seed_three == :seed_four)
      errors.add("Your playoff picks must be different from each other.")
    end      
  end
end