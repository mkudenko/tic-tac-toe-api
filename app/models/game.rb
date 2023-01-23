class Game < ApplicationRecord
    validates :naughts_user_id, :crosses_user_id, presence: true
    validates :naughts_user_id, :crosses_user_id, numericality: { only_integer: true }
    validates :winner_id, numericality: { only_integer: true, allow_nil: true }

    has_many :moves, dependent: :destroy
end
