json.extract! phone, :id, :indicative, :number, :type_phone, :address_id, :state_id, :created_at, :updated_at
json.url phone_url(phone, format: :json)
