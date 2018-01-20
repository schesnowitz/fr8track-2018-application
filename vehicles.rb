
require 'rubygems'
require 'httparty'
require 'json'
require 'ostruct'

require 'pp'
url = 'https://api.keeptruckin.com/v1'
headers = { 'content-type': 'application/json', 'X-Api-Key': '091333c7-bfcc-4724-a936-d7f4a02966e9' }

@vehicle_locations = HTTParty.get("#{url}/vehicle_locations", headers: headers)


@vehicle_locations_response = JSON.parse(@vehicle_locations.body, object_class: OpenStruct)


pp @vehicle_locations_response
puts "*" * 5


# @vehicle_locations_response.vehicles.each do |data|
#   @vehicle = data.vehicle
#   @current_driver = data.vehicle.current_driver
#   @current_location = data.vehicle.current_location
#   puts @vehicle.id
#   puts "number start"
#   puts @vehicle.number
#   puts "number end"
#   puts "vin start"
#   puts @vehicle.vin
#   puts "vin end"
# if !@current_driver.nil?
#   puts @current_driver.first_name
#   # puts @current_driver.first_name
# end
# # if !@current_location.nil?
# #   puts @current_location.lat 
# #   puts @current_location.lon
# # end

# # if !@current_driver.nil?
# #   puts @current_driver.driver_company_id
# # end




# end


 

@vehicle_locations_response.vehicles.each do |data|
  @vehicle = data.vehicle
  @current_driver = data.vehicle.current_driver
  @current_location = data.vehicle.current_location

  if !@current_driver.nil? && @current_driver.driver_company_id == '40268793320186691c34cdb5bb1d3456'
  puts "Vehicle ID: #{@vehicle.id}"
  puts "Vehicle number: #{@vehicle.number}"
  puts "Vehicle VIN: #{@vehicle.vin}"
  puts ''
puts '---------------------START @current_driver'
if !@current_driver.nil?
  puts "First Name: #{@current_driver.first_name}"
  puts "Last Name: #{@current_driver.last_name}"
  puts "API driver_company_id: #{@current_driver.driver_company_id}"
end
puts '---------------------END @current_driver'
puts ''
puts '---------------------Start @current_location'

if !@current_location.nil?
  puts "LAT: #{@current_location.lat}"
  puts "LNG: #{@current_location.lat}"
end
puts '---------------------END @current_location'
puts ''

end
end




