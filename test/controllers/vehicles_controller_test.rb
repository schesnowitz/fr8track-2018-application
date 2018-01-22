require 'test_helper'

class VehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_url
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post vehicles_url, params: { vehicle: { api_driver_company_id: @vehicle.api_driver_company_id, api_driver_id: @vehicle.api_driver_id, api_email: @vehicle.api_email, api_first_name: @vehicle.api_first_name, api_last_name: @vehicle.api_last_name, api_role: @vehicle.api_role, api_status: @vehicle.api_status, api_username: @vehicle.api_username, api_vehicle_id: @vehicle.api_vehicle_id, edl_device_id: @vehicle.edl_device_id, edl_identifier: @vehicle.edl_identifier, edl_model: @vehicle.edl_model, fuel_type: @vehicle.fuel_type, ifta: @vehicle.ifta, license_plate_number: @vehicle.license_plate_number, license_plate_state: @vehicle.license_plate_state, make: @vehicle.make, metric_units: @vehicle.metric_units, model: @vehicle.model, number: @vehicle.number, prevent_auto_odometer_entry: @vehicle.prevent_auto_odometer_entry, status: @vehicle.status, vin: @vehicle.vin, year: @vehicle.year } }
    end

    assert_redirected_to vehicle_url(Vehicle.last)
  end

  test "should show vehicle" do
    get vehicle_url(@vehicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_url(@vehicle)
    assert_response :success
  end

  test "should update vehicle" do
    patch vehicle_url(@vehicle), params: { vehicle: { api_driver_company_id: @vehicle.api_driver_company_id, api_driver_id: @vehicle.api_driver_id, api_email: @vehicle.api_email, api_first_name: @vehicle.api_first_name, api_last_name: @vehicle.api_last_name, api_role: @vehicle.api_role, api_status: @vehicle.api_status, api_username: @vehicle.api_username, api_vehicle_id: @vehicle.api_vehicle_id, edl_device_id: @vehicle.edl_device_id, edl_identifier: @vehicle.edl_identifier, edl_model: @vehicle.edl_model, fuel_type: @vehicle.fuel_type, ifta: @vehicle.ifta, license_plate_number: @vehicle.license_plate_number, license_plate_state: @vehicle.license_plate_state, make: @vehicle.make, metric_units: @vehicle.metric_units, model: @vehicle.model, number: @vehicle.number, prevent_auto_odometer_entry: @vehicle.prevent_auto_odometer_entry, status: @vehicle.status, vin: @vehicle.vin, year: @vehicle.year } }
    assert_redirected_to vehicle_url(@vehicle)
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete vehicle_url(@vehicle)
    end

    assert_redirected_to vehicles_url
  end
end
