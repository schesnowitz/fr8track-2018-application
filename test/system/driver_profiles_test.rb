require "application_system_test_case"

class DriverProfilesTest < ApplicationSystemTestCase
  setup do
    @driver_profile = driver_profiles(:one)
  end

  test "visiting the index" do
    visit driver_profiles_url
    assert_selector "h1", text: "Driver Profiles"
  end

  test "creating a Driver profile" do
    visit driver_profiles_url
    click_on "New Driver Profile"

    fill_in "Carrier City", with: @driver_profile.carrier_city
    fill_in "Carrier Name", with: @driver_profile.carrier_name
    fill_in "Carrier State", with: @driver_profile.carrier_state
    fill_in "Carrier Street", with: @driver_profile.carrier_street
    fill_in "Carrier Zip", with: @driver_profile.carrier_zip
    fill_in "Cycle", with: @driver_profile.cycle
    fill_in "Cycle2", with: @driver_profile.cycle2
    fill_in "Driver Company", with: @driver_profile.driver_company_id
    fill_in "Driver Internal", with: @driver_profile.driver_internal_id
    fill_in "Drivers License Number", with: @driver_profile.drivers_license_number
    fill_in "Drivers License State", with: @driver_profile.drivers_license_state
    fill_in "Duty Status", with: @driver_profile.duty_status
    fill_in "Eld Mode", with: @driver_profile.eld_mode
    fill_in "Email", with: @driver_profile.email
    fill_in "Emergency Contact Name", with: @driver_profile.emergency_contact_name
    fill_in "Emergency Contact Phone", with: @driver_profile.emergency_contact_phone
    fill_in "Exception 24 Hour Restart", with: @driver_profile.exception_24_hour_restart
    fill_in "Exception 24 Hour Restart2", with: @driver_profile.exception_24_hour_restart2
    fill_in "Exception 8 Hour Break", with: @driver_profile.exception_8_hour_break
    fill_in "Exception 8 Hour Break2", with: @driver_profile.exception_8_hour_break2
    fill_in "Exception Ca Farm School Bus", with: @driver_profile.exception_ca_farm_school_bus
    fill_in "Exception Ca Farm School Bus2", with: @driver_profile.exception_ca_farm_school_bus2
    fill_in "Exception Short Haul", with: @driver_profile.exception_short_haul
    fill_in "Exception Short Haul2", with: @driver_profile.exception_short_haul2
    fill_in "Exception Wait Time", with: @driver_profile.exception_wait_time
    fill_in "Exception Wait Time2", with: @driver_profile.exception_wait_time2
    fill_in "Export Combined", with: @driver_profile.export_combined
    fill_in "Export Odometers", with: @driver_profile.export_odometers
    fill_in "Export Recap", with: @driver_profile.export_recap
    fill_in "External", with: @driver_profile.external_id
    fill_in "First Name", with: @driver_profile.first_name
    fill_in "Image", with: @driver_profile.image
    fill_in "Last Name", with: @driver_profile.last_name
    fill_in "Manual Driving Enabled", with: @driver_profile.manual_driving_enabled
    fill_in "Metric Units", with: @driver_profile.metric_units
    fill_in "Minute Logs", with: @driver_profile.minute_logs
    fill_in "Personal Conveyance Enabled", with: @driver_profile.personal_conveyance_enabled
    fill_in "Phone", with: @driver_profile.phone
    fill_in "Phone Ext", with: @driver_profile.phone_ext
    fill_in "Role", with: @driver_profile.role
    fill_in "Status", with: @driver_profile.status
    fill_in "Terminal City", with: @driver_profile.terminal_city
    fill_in "Terminal State", with: @driver_profile.terminal_state
    fill_in "Terminal Street", with: @driver_profile.terminal_street
    fill_in "Terminal Zip", with: @driver_profile.terminal_zip
    fill_in "Time Zone", with: @driver_profile.time_zone
    fill_in "Username", with: @driver_profile.username
    fill_in "Violation Alerts", with: @driver_profile.violation_alerts
    fill_in "Yard Moves Enabled", with: @driver_profile.yard_moves_enabled
    click_on "Create Driver profile"

    assert_text "Driver profile was successfully created"
    click_on "Back"
  end

  test "updating a Driver profile" do
    visit driver_profiles_url
    click_on "Edit", match: :first

    fill_in "Carrier City", with: @driver_profile.carrier_city
    fill_in "Carrier Name", with: @driver_profile.carrier_name
    fill_in "Carrier State", with: @driver_profile.carrier_state
    fill_in "Carrier Street", with: @driver_profile.carrier_street
    fill_in "Carrier Zip", with: @driver_profile.carrier_zip
    fill_in "Cycle", with: @driver_profile.cycle
    fill_in "Cycle2", with: @driver_profile.cycle2
    fill_in "Driver Company", with: @driver_profile.driver_company_id
    fill_in "Driver Internal", with: @driver_profile.driver_internal_id
    fill_in "Drivers License Number", with: @driver_profile.drivers_license_number
    fill_in "Drivers License State", with: @driver_profile.drivers_license_state
    fill_in "Duty Status", with: @driver_profile.duty_status
    fill_in "Eld Mode", with: @driver_profile.eld_mode
    fill_in "Email", with: @driver_profile.email
    fill_in "Emergency Contact Name", with: @driver_profile.emergency_contact_name
    fill_in "Emergency Contact Phone", with: @driver_profile.emergency_contact_phone
    fill_in "Exception 24 Hour Restart", with: @driver_profile.exception_24_hour_restart
    fill_in "Exception 24 Hour Restart2", with: @driver_profile.exception_24_hour_restart2
    fill_in "Exception 8 Hour Break", with: @driver_profile.exception_8_hour_break
    fill_in "Exception 8 Hour Break2", with: @driver_profile.exception_8_hour_break2
    fill_in "Exception Ca Farm School Bus", with: @driver_profile.exception_ca_farm_school_bus
    fill_in "Exception Ca Farm School Bus2", with: @driver_profile.exception_ca_farm_school_bus2
    fill_in "Exception Short Haul", with: @driver_profile.exception_short_haul
    fill_in "Exception Short Haul2", with: @driver_profile.exception_short_haul2
    fill_in "Exception Wait Time", with: @driver_profile.exception_wait_time
    fill_in "Exception Wait Time2", with: @driver_profile.exception_wait_time2
    fill_in "Export Combined", with: @driver_profile.export_combined
    fill_in "Export Odometers", with: @driver_profile.export_odometers
    fill_in "Export Recap", with: @driver_profile.export_recap
    fill_in "External", with: @driver_profile.external_id
    fill_in "First Name", with: @driver_profile.first_name
    fill_in "Image", with: @driver_profile.image
    fill_in "Last Name", with: @driver_profile.last_name
    fill_in "Manual Driving Enabled", with: @driver_profile.manual_driving_enabled
    fill_in "Metric Units", with: @driver_profile.metric_units
    fill_in "Minute Logs", with: @driver_profile.minute_logs
    fill_in "Personal Conveyance Enabled", with: @driver_profile.personal_conveyance_enabled
    fill_in "Phone", with: @driver_profile.phone
    fill_in "Phone Ext", with: @driver_profile.phone_ext
    fill_in "Role", with: @driver_profile.role
    fill_in "Status", with: @driver_profile.status
    fill_in "Terminal City", with: @driver_profile.terminal_city
    fill_in "Terminal State", with: @driver_profile.terminal_state
    fill_in "Terminal Street", with: @driver_profile.terminal_street
    fill_in "Terminal Zip", with: @driver_profile.terminal_zip
    fill_in "Time Zone", with: @driver_profile.time_zone
    fill_in "Username", with: @driver_profile.username
    fill_in "Violation Alerts", with: @driver_profile.violation_alerts
    fill_in "Yard Moves Enabled", with: @driver_profile.yard_moves_enabled
    click_on "Update Driver profile"

    assert_text "Driver profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Driver profile" do
    visit driver_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Driver profile was successfully destroyed"
  end
end
