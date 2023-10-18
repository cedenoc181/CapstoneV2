class UserSerializer < ActiveModel::Serializer
  # add expressions to serializer 
  attributes :id, :email, :first_name, :last_name, :admin, :users_info
  # has_one :users_info
  has_many :reviews
  has_many :appointments
  has_many :exercises
  has_many :providers_user_reviewed
  has_many :associated_providers
end
