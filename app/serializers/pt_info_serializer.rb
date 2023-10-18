class PtInfoSerializer < ActiveModel::Serializer
  attributes :physical_therapist_id, :email, :fax, :phone_number, :npi_number, :clinic_address, :post_grad_edu, :home_visit, :tele_medicine, :about_me
end
