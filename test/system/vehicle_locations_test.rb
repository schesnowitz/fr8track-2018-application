require "application_system_test_case"

class VehicleLocationsTest < ApplicationSystemTestCase
  setup do
    @vehicle_location = vehicle_locations(:one)
  end

  test "visiting the index" do
    visit vehicle_locations_url
    assert_selector "h1", text: "Vehicle Locations"
  end

  test "creating a Vehicle location" do
    visit vehicle_locations_url
    click_on "New Vehicle Location"

    fill_in "Bearing", with: @vehicle_location.bearing
    fill_in "Date", with: @vehicle_location.date
    fill_in "Driver Company", with: @vehicle_location.driver_company_id
    fill_in "Driver First Name", with: @vehicle_location.driver_first_name
    fill_in "Driver", with: @vehicle_location.driver_id
    fill_in "Driver Last Name", with: @vehicle_location.driver_last_name
    fill_in "Driver Profile", with: @vehicle_location.driver_profile_id
    fill_in "Driver Role", with: @vehicle_location.driver_role
    fill_in "Driver Status", with: @vehicle_location.driver_status
    fill_in "Driver Username", with: @vehicle_location.driver_username
    fill_in "Edl", with: @vehicle_location.edl_id
    fill_in "Edl Identifier", with: @vehicle_location.edl_identifier
    fill_in "Edl Model", with: @vehicle_location.edl_model
    fill_in "Engine Hours", with: @vehicle_location.engine_hours
    fill_in "Fuel", with: @vehicle_location.fuel
    fill_in "Latitude", with: @vehicle_location.latitude
    fill_in "Located At", with: @vehicle_location.located_at
    fill_in "Location Description", with: @vehicle_location.location_description
    fill_in "Location", with: @vehicle_location.location_id
    fill_in "Longitude", with: @vehicle_location.longitude
    fill_in "Movement Type", with: @vehicle_location.movement_type
    fill_in "Odometer", with: @vehicle_location.odometer
    fill_in "Speed", with: @vehicle_location.speed
    click_on "Create Vehicle location"

    assert_text "Vehicle location was successfully created"
    click_on "Back"
  end

  test "updating a Vehicle location" do
    visit vehicle_locations_url
    click_on "Edit", match: :first

    fill_in "Bearing", with: @vehicle_location.bearing
    fill_in "Date", with: @vehicle_location.date
    fill_in "Driver Company", with: @vehicle_location.driver_company_id
    fill_in "Driver First Name", with: @vehicle_location.driver_first_name
    fill_in "Driver", with: @vehicle_location.driver_id
    fill_in "Driver Last Name", with: @vehicle_location.driver_last_name
    fill_in "Driver Profile", with: @vehicle_location.driver_profile_id
    fill_in "Driver Role", with: @vehicle_location.driver_role
    fill_in "Driver Status", with: @vehicle_location.driver_status
    fill_in "Driver Username", with: @vehicle_location.driver_username
    fill_in "Edl", with: @vehicle_location.edl_id
    fill_in "Edl Identifier", with: @vehicle_location.edl_identifier
    fill_in "Edl Model", with: @vehicle_location.edl_model
    fill_in "Engine Hours", with: @vehicle_location.engine_hours
    fill_in "Fuel", with: @vehicle_location.fuel
    fill_in "Latitude", with: @vehicle_location.latitude
    fill_in "Located At", with: @vehicle_location.located_at
    fill_in "Location Description", with: @vehicle_location.location_description
    fill_in "Location", with: @vehicle_location.location_id
    fill_in "Longitude", with: @vehicle_location.longitude
    fill_in "Movement Type", with: @vehicle_location.movement_type
    fill_in "Odometer", with: @vehicle_location.odometer
    fill_in "Speed", with: @vehicle_location.speed
    click_on "Update Vehicle location"

    assert_text "Vehicle location was successfully updated"
    click_on "Back"
  end

  test "destroying a Vehicle location" do
    visit vehicle_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vehicle location was successfully destroyed"
  end
end
