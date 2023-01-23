class CreateMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :moves do |t|
      t.integer :game_id
      t.integer :user_id
      t.integer :cell
    end

    add_foreign_key :moves, :games
  end
end
