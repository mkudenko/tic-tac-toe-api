class GameResource < JSONAPI::Resource
    attributes :naughts_user_id, :crosses_user_id, :winner_id
    has_many :moves
end