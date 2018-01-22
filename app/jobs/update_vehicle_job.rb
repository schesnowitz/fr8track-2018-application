class UpdateVehicleJob < ApplicationJob 


  def perform()

    @url = 'https://api.keeptruckin.com/v1'
    @headers = { 'content-type': 'application/json', 'X-Api-Key': '091333c7-bfcc-4724-a936-d7f4a02966e9' }
    @all_vehicles = HTTParty.get("#{@url}/vehicles", headers: @headers)
    @vehicles_response = JSON.parse(@all_vehicles.body, object_class: OpenStruct)

    @vehicles_response.vehicles.each do |data|
      @vehicle_response = data.vehicle
      Vehicle.connection
      @vehicle_local = Vehicle.where("vin like ?", "#{Vehicle.vin}").first
      if @vehicle_response.vin == @vehicle_local.vin
      puts @vehicle_local.vin
      else
        puts "did not match"
      end
    end 

  # v = Vehicle.find_or_initialize_by(vin: @api_vehicle.vin)
  #  v.license_plate_number = @vehicle.license_plate_number
  #  v.save
         

  end
end 


