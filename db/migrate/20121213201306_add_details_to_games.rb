class AddDetailsToGames < ActiveRecord::Migration
  def change
    add_column :games, :description, :text
    add_column :games, :instructions, :text
  end
end
