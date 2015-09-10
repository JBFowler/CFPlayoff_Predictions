class AddFavoriteTeamToUsers < ActiveRecord::Migration
  def change
    add_column :users, :favorite_team, :string
    add_column :users, :location, :string
  end
end
