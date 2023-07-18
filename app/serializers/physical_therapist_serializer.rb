class PhysicalTherapistSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :profile_picture, :clinic_address, :specialization, :title, :npi_number, :languages_spoken, :insurance_network, :home_visits, :about_me, :rating, :post_grad__education, :phone_number, :appointments, :users, :reviews
end
