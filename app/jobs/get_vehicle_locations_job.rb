class GetVehicleLocationsJob < ApplicationJob 


  def perform(*args)
    @id = Vehicle.pluck(:api_id) # integer array
    @query = { 
      'vehicle_ids': @id
    }
    @url = 'https://api.keeptruckin.com/v1'
    @headers = { 'content-type': 'application/json', 'X-Api-Key': ENV["KEEP_TRUCKIN_KEY"] }
    @all_locations = HTTParty.get("#{@url}/vehicle_locations", query: @query, headers: @headers)
    @locations_response = JSON.parse(@all_locations.body, object_class: OpenStruct)

    @locations_response.vehicles.each do |data| 
    vehicle = data.vehicle
    driver = data.vehicle.current_driver 
    location = data.vehicle.current_location
  if !driver.nil?
    # api_id                          = vehicle.id
    driver_id                       = driver.id   
    lat                             = location.lat
    lon                             = location.lon 
  end
        location = VehicleLocation.new
        # location.api_id = api_id
        location.driver_id = driver_id
        location.latitude = lat
        location.longitude = lon
        location.save
        sleep 5  
        puts @locations_response.message
    end
  end
end 

