json.extract! booking, :id, :booking_id, :passenger_id, :vehicle_id, :booking_date, :pickup_location, :drop_location, :created_at, :updated_at
json.url booking_url(booking, format: :json)
