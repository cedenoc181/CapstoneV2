json.extract! pt_info, :id, :email, :fax, :phone_number, :npi_number, :clinic_address, :post_grad_edu, :home_visit, :telemedicine, :about_me, :created_at, :updated_at
json.url pt_info_url(pt_info, format: :json)
