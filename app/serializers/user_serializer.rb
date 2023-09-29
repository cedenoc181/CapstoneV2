class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :insurance, :insurance_member_id, :first_name, :last_name, :state, :city, :address, :phone_number, :DOB, :appointments, :physical_therapists, :exercises, :reviews, :favorites
end
