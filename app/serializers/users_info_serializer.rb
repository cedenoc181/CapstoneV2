class UsersInfoSerializer < ActiveModel::Serializer
  attributes :id, :state, :city, :address, :DOB, :phone_number, :insurance, :insurance_id
end
