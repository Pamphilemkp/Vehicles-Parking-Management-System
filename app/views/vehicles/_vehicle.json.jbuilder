json.extract! vehicle, :id, :vehicle_id, :category_id, :registration_number, :model, :owner_name, :owner_phone,
              :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
