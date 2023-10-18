class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :physical_therapist_id, :photo, :stars, :users_review  
end
