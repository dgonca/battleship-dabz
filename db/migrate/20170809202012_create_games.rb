class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :board1_id
      t.integer :board2_id
      t.integer :winner_id

      t.timestamps
    end
  end
end
