class AddEndGameField < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :end_game, :boolean, default: :false
  end
end
