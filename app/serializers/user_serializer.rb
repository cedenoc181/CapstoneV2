class UserSerializer < ActiveModel::Serializer
  # add expressions to serializer 
  attributes :id, :email, :first_name, :last_name, :admin, :users_info, :exercises
  has_many :therapist_user_reviewed
  has_many :appointments_with_physical_therapists
end
