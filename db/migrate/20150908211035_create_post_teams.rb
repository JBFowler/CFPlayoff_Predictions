class CreatePostTeams < ActiveRecord::Migration
  def change
    create_table :post_teams do |t|
      t.integer :team_id, :post_id
    end
  end
end
