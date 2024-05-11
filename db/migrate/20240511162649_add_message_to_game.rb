class AddMessageToGame < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :message, :string
  end
end
