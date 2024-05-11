class CreateGame < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :player_1
      t.string :player_2
      t.string :field_1
      t.string :field_2
      t.string :field_3
      t.string :field_4
      t.string :field_5
      t.string :field_6
      t.string :field_7
      t.string :field_8
      t.string :field_9
      
      t.timestamps
    end
  end
end
