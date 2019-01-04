class ScoreSerializer < ActiveModel::Serializer
  attributes :user_id, :score
  # has_one :user
end
