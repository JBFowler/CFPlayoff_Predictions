class PostTeam < ActiveRecord::Base
  belongs_to :team
  belongs_to :post
end