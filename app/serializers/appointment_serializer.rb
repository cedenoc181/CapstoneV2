class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :physical_therapist_id, :case, :home_visit, :telemedicine, :scheduled, :user, :physical_therapist  
end
