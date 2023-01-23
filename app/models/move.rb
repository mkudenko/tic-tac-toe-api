class Move < ApplicationRecord
    validates :user_id, :cell, presence: true
    validates :user_id, :cell, numericality: { only_integer: true }

    belongs_to :game
end
