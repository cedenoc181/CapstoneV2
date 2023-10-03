class PtInfoSerializer < ActiveModel::Serializer
  attributes :id, :email, :fax, :phone_number, :npi_number, :clinic_address, :post_grad_edu, :home_visit, :telemedicine, :about_me
end
