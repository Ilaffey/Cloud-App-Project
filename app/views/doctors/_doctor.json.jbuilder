json.extract! doctor, :id, :name, :contactNumber, :address, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
