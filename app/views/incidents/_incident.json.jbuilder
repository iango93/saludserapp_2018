json.extract! incident, :id, :num_incident, :type_incident, :affair, :description, :customer_id, :company_id, :headquarter_id, :state_id, :created_at, :updated_at
json.url incident_url(incident, format: :json)
