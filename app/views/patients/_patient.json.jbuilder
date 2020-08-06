json.extract! patient, :id, :name, :contactNumber, :dob, :condition, :Doctor, :currentRoom, :patientEntryDate, :patientDepartureDate, :RecordlastUpdated, :created_at, :updated_at
json.url patient_url(patient, format: :json)
