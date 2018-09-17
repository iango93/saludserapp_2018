json.extract! staff, :id, :first_name, :lastname, :username, :password_digest, :role_id, :birthdate, :state_id, :created_at, :updated_at
json.url staff_url(staff, format: :json)
