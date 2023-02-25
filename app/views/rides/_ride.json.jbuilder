json.extract! ride, :id, :ride_id, :driver_id, :passenger_id, :vehicle_id, :ride_date, :pickup_location, :drop_location, :fare, :created_at, :updated_at
json.url ride_url(ride, format: :json)
