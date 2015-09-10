class AddTeamChoicesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :seed_one, :string
    add_column :posts, :seed_two, :string
    add_column :posts, :seed_three, :string
    add_column :posts, :seed_four, :string
  end
end
