# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_15_092336) do
  create_table "games", force: :cascade do |t|
    t.integer "naughts_user_id"
    t.integer "crosses_user_id"
    t.integer "winner_id"
  end

  create_table "moves", force: :cascade do |t|
    t.integer "game_id"
    t.integer "user_id"
    t.integer "cell"
  end

  add_foreign_key "moves", "games"
end
