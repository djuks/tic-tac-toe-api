class ChangePlayersToUsers < ActiveRecord::Migration[7.1]
  def change
    rename_table :players, :users
  end
end
