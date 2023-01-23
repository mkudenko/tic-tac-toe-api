class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :naughts_user_id
      t.integer :crosses_user_id
      t.integer :winner_id
    end
  end
end
