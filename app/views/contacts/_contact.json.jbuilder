json.extract! contact, :id, :type, :value, :store_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
