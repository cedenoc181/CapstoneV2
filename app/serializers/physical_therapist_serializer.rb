class PhysicalTherapistSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :profile_picture, :specialization, :title, :rating, :pt_infos, :users, :appointments, :reviews
end
