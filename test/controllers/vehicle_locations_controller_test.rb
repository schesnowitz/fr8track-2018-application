require 'test_helper'

class VehicleLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_location = vehicle_locations(:one)
  end

  test "should get index" do
    get vehicle_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_location_url
    assert_response :success
  end

  test "should create vehicle_location" do
    assert_difference('VehicleLocation.count') do
      post vehicle_locations_url, params: { vehicle_location: { bearing: @vehicle_location.bearing, date: @vehicle_location.date, driver_company_id: @vehicle_location.driver_company_id, driver_first_name: @vehicle_location.driver_first_name, driver_id: @vehicle_location.driver_id, driver_last_name: @vehicle_location.driver_last_name, driver_profile_id: @vehicle_location.driver_profile_id, driver_role: @vehicle_location.driver_role, driver_status: @vehicle_location.driver_status, driver_username: @vehicle_location.driver_username, edl_id: @vehicle_location.edl_id, edl_identifier: @vehicle_location.edl_identifier, edl_model: @vehicle_location.edl_model, engine_hours: @vehicle_location.engine_hours, fuel: @vehicle_location.fuel, latitude: @vehicle_location.latitude, located_at: @vehicle_location.located_at, location_description: @vehicle_location.location_description, location_id: @vehicle_location.location_id, longitude: @vehicle_location.longitude, movement_type: @vehicle_location.movement_type, odometer: @vehicle_location.odometer, speed: @vehicle_location.speed } }
    end

    assert_redirected_to vehicle_location_url(VehicleLocation.last)
  end

  test "should show vehicle_location" do
    get vehicle_location_url(@vehicle_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_location_url(@vehicle_location)
    assert_response :success
  end

  test "should update vehicle_location" do
    patch vehicle_location_url(@vehicle_location), params: { vehicle_location: { bearing: @vehicle_location.bearing, date: @vehicle_location.date, driver_company_id: @vehicle_location.driver_company_id, driver_first_name: @vehicle_location.driver_first_name, driver_id: @vehicle_location.driver_id, driver_last_name: @vehicle_location.driver_last_name, driver_profile_id: @vehicle_location.driver_profile_id, driver_role: @vehicle_location.driver_role, driver_status: @vehicle_location.driver_status, driver_username: @vehicle_location.driver_username, edl_id: @vehicle_location.edl_id, edl_identifier: @vehicle_location.edl_identifier, edl_model: @vehicle_location.edl_model, engine_hours: @vehicle_location.engine_hours, fuel: @vehicle_location.fuel, latitude: @vehicle_location.latitude, located_at: @vehicle_location.located_at, location_description: @vehicle_location.location_description, location_id: @vehicle_location.location_id, longitude: @vehicle_location.longitude, movement_type: @vehicle_location.movement_type, odometer: @vehicle_location.odometer, speed: @vehicle_location.speed } }
    assert_redirected_to vehicle_location_url(@vehicle_location)
  end

  test "should destroy vehicle_location" do
    assert_difference('VehicleLocation.count', -1) do
      delete vehicle_location_url(@vehicle_location)
    end

    assert_redirected_to vehicle_locations_url
  end
end
