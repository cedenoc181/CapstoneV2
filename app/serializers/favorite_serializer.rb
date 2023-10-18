class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :exercise_id

  belongs_to :user
  belongs_to :exercise
end
