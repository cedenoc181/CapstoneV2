class PhysicalTherapistSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :profile_picture, :specialization, :title, :rating, :pt_info
  # has_one :pt_info
  has_many :reviews
  has_many :my_patients
  has_many :feedback_from
end
