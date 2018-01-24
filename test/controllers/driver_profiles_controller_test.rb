require 'test_helper'

class DriverProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @driver_profile = driver_profiles(:one)
  end

  test "should get index" do
    get driver_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_driver_profile_url
    assert_response :success
  end

  test "should create driver_profile" do
    assert_difference('DriverProfile.count') do
      post driver_profiles_url, params: { driver_profile: { carrier_city: @driver_profile.carrier_city, carrier_name: @driver_profile.carrier_name, carrier_state: @driver_profile.carrier_state, carrier_street: @driver_profile.carrier_street, carrier_zip: @driver_profile.carrier_zip, cycle: @driver_profile.cycle, cycle2: @driver_profile.cycle2, driver_company_id: @driver_profile.driver_company_id, driver_internal_id: @driver_profile.driver_internal_id, drivers_license_number: @driver_profile.drivers_license_number, drivers_license_state: @driver_profile.drivers_license_state, duty_status: @driver_profile.duty_status, eld_mode: @driver_profile.eld_mode, email: @driver_profile.email, emergency_contact_name: @driver_profile.emergency_contact_name, emergency_contact_phone: @driver_profile.emergency_contact_phone, exception_24_hour_restart: @driver_profile.exception_24_hour_restart, exception_24_hour_restart2: @driver_profile.exception_24_hour_restart2, exception_8_hour_break: @driver_profile.exception_8_hour_break, exception_8_hour_break2: @driver_profile.exception_8_hour_break2, exception_ca_farm_school_bus: @driver_profile.exception_ca_farm_school_bus, exception_ca_farm_school_bus2: @driver_profile.exception_ca_farm_school_bus2, exception_short_haul: @driver_profile.exception_short_haul, exception_short_haul2: @driver_profile.exception_short_haul2, exception_wait_time: @driver_profile.exception_wait_time, exception_wait_time2: @driver_profile.exception_wait_time2, export_combined: @driver_profile.export_combined, export_odometers: @driver_profile.export_odometers, export_recap: @driver_profile.export_recap, external_id: @driver_profile.external_id, first_name: @driver_profile.first_name, image: @driver_profile.image, last_name: @driver_profile.last_name, manual_driving_enabled: @driver_profile.manual_driving_enabled, metric_units: @driver_profile.metric_units, minute_logs: @driver_profile.minute_logs, personal_conveyance_enabled: @driver_profile.personal_conveyance_enabled, phone: @driver_profile.phone, phone_ext: @driver_profile.phone_ext, role: @driver_profile.role, status: @driver_profile.status, terminal_city: @driver_profile.terminal_city, terminal_state: @driver_profile.terminal_state, terminal_street: @driver_profile.terminal_street, terminal_zip: @driver_profile.terminal_zip, time_zone: @driver_profile.time_zone, username: @driver_profile.username, violation_alerts: @driver_profile.violation_alerts, yard_moves_enabled: @driver_profile.yard_moves_enabled } }
    end

    assert_redirected_to driver_profile_url(DriverProfile.last)
  end

  test "should show driver_profile" do
    get driver_profile_url(@driver_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_driver_profile_url(@driver_profile)
    assert_response :success
  end

  test "should update driver_profile" do
    patch driver_profile_url(@driver_profile), params: { driver_profile: { carrier_city: @driver_profile.carrier_city, carrier_name: @driver_profile.carrier_name, carrier_state: @driver_profile.carrier_state, carrier_street: @driver_profile.carrier_street, carrier_zip: @driver_profile.carrier_zip, cycle: @driver_profile.cycle, cycle2: @driver_profile.cycle2, driver_company_id: @driver_profile.driver_company_id, driver_internal_id: @driver_profile.driver_internal_id, drivers_license_number: @driver_profile.drivers_license_number, drivers_license_state: @driver_profile.drivers_license_state, duty_status: @driver_profile.duty_status, eld_mode: @driver_profile.eld_mode, email: @driver_profile.email, emergency_contact_name: @driver_profile.emergency_contact_name, emergency_contact_phone: @driver_profile.emergency_contact_phone, exception_24_hour_restart: @driver_profile.exception_24_hour_restart, exception_24_hour_restart2: @driver_profile.exception_24_hour_restart2, exception_8_hour_break: @driver_profile.exception_8_hour_break, exception_8_hour_break2: @driver_profile.exception_8_hour_break2, exception_ca_farm_school_bus: @driver_profile.exception_ca_farm_school_bus, exception_ca_farm_school_bus2: @driver_profile.exception_ca_farm_school_bus2, exception_short_haul: @driver_profile.exception_short_haul, exception_short_haul2: @driver_profile.exception_short_haul2, exception_wait_time: @driver_profile.exception_wait_time, exception_wait_time2: @driver_profile.exception_wait_time2, export_combined: @driver_profile.export_combined, export_odometers: @driver_profile.export_odometers, export_recap: @driver_profile.export_recap, external_id: @driver_profile.external_id, first_name: @driver_profile.first_name, image: @driver_profile.image, last_name: @driver_profile.last_name, manual_driving_enabled: @driver_profile.manual_driving_enabled, metric_units: @driver_profile.metric_units, minute_logs: @driver_profile.minute_logs, personal_conveyance_enabled: @driver_profile.personal_conveyance_enabled, phone: @driver_profile.phone, phone_ext: @driver_profile.phone_ext, role: @driver_profile.role, status: @driver_profile.status, terminal_city: @driver_profile.terminal_city, terminal_state: @driver_profile.terminal_state, terminal_street: @driver_profile.terminal_street, terminal_zip: @driver_profile.terminal_zip, time_zone: @driver_profile.time_zone, username: @driver_profile.username, violation_alerts: @driver_profile.violation_alerts, yard_moves_enabled: @driver_profile.yard_moves_enabled } }
    assert_redirected_to driver_profile_url(@driver_profile)
  end

  test "should destroy driver_profile" do
    assert_difference('DriverProfile.count', -1) do
      delete driver_profile_url(@driver_profile)
    end

    assert_redirected_to driver_profiles_url
  end
end
