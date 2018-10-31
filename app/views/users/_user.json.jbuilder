json.extract! user, :id, :username, :name, :number, :address, :phone, :rol, :location_id, :city_id, :created_at, :updated_at
json.url user_url(user, format: :json)
