# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Move.destroy_all
Game.destroy_all

game_1 = Game.create!(naughts_user_id: 1, crosses_user_id: 2, winner_id: 2)
Move.create!([
    { game_id: game_1.id, user_id: 2, cell: 0 },
    { game_id: game_1.id, user_id: 1, cell: 1 },
    { game_id: game_1.id, user_id: 2, cell: 4 },
    { game_id: game_1.id, user_id: 1, cell: 5 },
    { game_id: game_1.id, user_id: 2, cell: 8 },
])


game_2 = Game.create!(naughts_user_id: 2, crosses_user_id: 1, winner_id: 2)
Move.create!([
    { game_id: game_2.id, user_id: 1, cell: 1 },
    { game_id: game_2.id, user_id: 2, cell: 2 },
    { game_id: game_2.id, user_id: 1, cell: 7 },
    { game_id: game_2.id, user_id: 2, cell: 4 },
    { game_id: game_2.id, user_id: 1, cell: 8 },
    { game_id: game_2.id, user_id: 2, cell: 6 },
])
