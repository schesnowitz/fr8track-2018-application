json.extract! vehicle, :id, :kt_vehicle_id, :vin, :year, :make, :model, :fuel_type, :plate_state, :plate_number, :odometer_units, :edl_sn, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
