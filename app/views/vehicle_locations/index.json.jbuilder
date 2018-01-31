json.array! @vehicle_map_locations.each do |vehicle_location|
  json.lat vehicle_location.latitude
  json.lng vehicle_location.longitude
  json.description vehicle_location.location_description
  json.driver_first_name vehicle_location.driver_first_name
json.content VehicleLocationsController.render(partial: 'vehicle_locations/vehicle_location', locals: { vehicle_location: vehicle_location }, format: :html).squish
end