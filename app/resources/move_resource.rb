class MoveResource < JSONAPI::Resource
    attributes :user_id, :cell
    has_one :game
end