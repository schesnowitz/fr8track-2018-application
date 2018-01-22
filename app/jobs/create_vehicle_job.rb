class CreateVehicleJob < ApplicationJob 


  def perform()

    @url = 'https://api.keeptruckin.com/v1'
    @headers = { 'content-type': 'application/json', 'X-Api-Key': '091333c7-bfcc-4724-a936-d7f4a02966e9' }
    @all_vehicles = HTTParty.get("#{@url}/vehicles", headers: @headers)
    @vehicles_response = JSON.parse(@all_vehicles.body, object_class: OpenStruct)

    @vehicles_response.vehicles.each do |data| 
    vehicle = data.vehicle
    driver = data.vehicle.current_driver 

    if !vehicle.nil? && !vehicle.eld_device.nil?
      response_edl_id = vehicle.eld_device.id
      response_edl_identifier = vehicle.eld_device.identifier
      response_edl_model = vehicle.eld_device.model
    end
 
      response_vehicle_id = vehicle.id


      response_vehicle_company_id = vehicle.company_id

    

      response_vehicle_number = vehicle.number 


      response_vehicle_status = vehicle.status 

 
      response_vehicle_vin = vehicle.vin

   
      response_vehicle_ifta = vehicle.ifta
    

      response_vehicle_year = vehicle.year


      response_vehicle_make = vehicle.make
 
   
      response_vehicle_model = vehicle.model
 

      response_vehicle_plate = vehicle.license_plate_number
 

      response_vehicle_state = vehicle.license_plate_state


      response_vehicle_metric = vehicle.metric_units


      response_vehicle_fuel = vehicle.fuel_type

      response_vehicle_paoe = vehicle.prevent_auto_odometer_entry


    if !driver.nil? && !driver.first_name.nil?
      response_driver_first_name = driver.first_name
    end
    if !driver.nil? && !driver.last_name.nil?
      response_driver_last_name = driver.last_name
    end
    if !driver.nil? && !driver.driver_company_id.nil?
      response_driver_company_id = driver.driver_company_id
    end
    if !driver.nil? && !driver.id.nil?
      response_driver_id = driver.id
    end 
    if !driver.nil? && !driver.username.nil?
      response_driver_username = driver.username
    end
    if !driver.nil? && !driver.email.nil?
      response_driver_email = driver.email
    end 
    if !driver.nil? && !driver.status.nil?
      response_driver_status = driver.status
    end    
    if !driver.nil? && !driver.role.nil?
      response_driver_role = driver.role
    end      


        Vehicle.create(
          api_vehicle_id: response_vehicle_id,
          api_vehicle_company_id: response_vehicle_company_id,
          number: response_vehicle_number,
          status: response_vehicle_status,
          ifta: response_vehicle_ifta,
          vin: response_vehicle_vin,
          make: response_vehicle_make,
          model: response_vehicle_model,
          year: response_vehicle_year,
          license_plate_state: response_vehicle_state,
          license_plate_number: response_vehicle_plate,
          metric_units: response_vehicle_metric,
          fuel_type: response_vehicle_fuel,
          prevent_auto_odometer_entry: response_vehicle_paoe,
          edl_device_id: response_edl_id,
          edl_identifier: response_edl_identifier,
          edl_model: response_edl_model,
          api_driver_id: response_driver_id,
          api_first_name: response_driver_first_name,
          api_last_name: response_driver_last_name,
          api_username: response_driver_username,
          api_email: response_driver_email,
          api_driver_company_id: response_driver_company_id,
          api_status: response_driver_status,
          api_role: response_driver_role
     
        )  
          
    end
  end
end 


