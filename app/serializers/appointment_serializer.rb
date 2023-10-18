class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :physical_therapist_id, :case, :home_visit, :telemedicine, :scheduled
  belongs_to :user
  belongs_to :physical_therapist  
end
