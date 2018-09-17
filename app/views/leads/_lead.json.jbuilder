json.extract! lead, :id, :first_name, :second_name, :lastname, :second_suname, :current_work, :email_id, :advertising_medium, :address_id, :active, :customer_id, :created_at, :updated_at
json.url lead_url(lead, format: :json)
