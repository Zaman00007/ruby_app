json.extract! patient_record, :id, :name, :age, :gender, :issue, :created_at, :updated_at
json.url patient_record_url(patient_record, format: :json)
