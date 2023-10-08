class UserSerializer < ActiveModel::Serializer
  # add expressions to serializer 
  attributes :id, :email, :first_name, :last_name, :admin, :users_info, :reviews, :favorites, :appointments
end
