json.extract! users_info, :id, :state, :city, :address, :DOB, :phone_number, :insurance, :insurance_id, :created_at, :updated_at
json.url users_info_url(users_info, format: :json)
