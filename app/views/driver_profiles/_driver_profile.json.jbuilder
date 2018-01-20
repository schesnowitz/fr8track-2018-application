json.extract! driver_profile, :id, :first_name, :last_name, :dob, :street, :city, :state, :zip, :telephone, :image, :driver_company_id, :created_at, :updated_at
json.url driver_profile_url(driver_profile, format: :json)
