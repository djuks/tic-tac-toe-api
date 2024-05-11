class AddLastPlayedToGame < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :last_played, :string
  end
end
