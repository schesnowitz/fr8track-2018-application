
require 'rubygems'
require 'httparty'
require 'json'
require 'ostruct'



@url = 'https://api.keeptruckin.com/v1'
@headers = { 'content-type': 'application/json', 'X-Api-Key': '091333c7-bfcc-4724-a936-d7f4a02966e9' }
@all_drivers = HTTParty.get("#{@url}/users", headers: @headers)
@drivers_response = JSON.parse(@all_drivers.body, object_class: OpenStruct)

@drivers_response.users.each do |data| 
driver = data.user
# driver = data.driver.current_driver 

puts driver.id
puts driver.driver_company_id
puts driver.email
puts driver.first_name
puts driver.last_name
puts driver.username
puts driver.phone
puts driver.phone_ext
puts driver.time_zone
puts driver.metric_units
puts driver.carrier_name
puts driver.carrier_street
puts driver.carrier_city
puts driver.carrier_state
puts driver.carrier_zip
puts driver.violation_alerts
puts driver.terminal_street
puts driver.terminal_city
puts driver.terminal_state
puts driver.terminal_zip
puts driver.cycle
puts driver.exception_24_hour_restart
puts driver.exception_8_hour_break
puts driver.exception_wait_time
puts driver.exception_short_haul
puts driver.exception_ca_farm_school_bus
puts driver.cycle2
puts driver.exception_24_hour_restart2
puts driver.exception_8_hour_break2
puts driver.exception_wait_time2
puts driver.exception_short_haul2
puts driver.exception_ca_farm_school_bus2
puts driver.export_combined
puts driver.export_recap
puts driver.export_odometers
puts driver.drivername

puts driver.minute_logs
puts driver.duty_status
puts driver.eld_mode
puts driver.drivers_license_number
puts driver.drivers_license_state
puts driver.yard_moves_enabled
puts driver.personal_conveyance_enabled
puts driver.manual_driving_enabled
puts driver.role
puts driver.status
end