class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :insurance, :first_name, :last_name, :state, :city, :address, :phone_number, :DOB, :appointments, :physical_therapists, :exercises, :reviews, :favorites
end
