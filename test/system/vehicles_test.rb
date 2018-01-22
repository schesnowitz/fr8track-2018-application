require "application_system_test_case"

class VehiclesTest < ApplicationSystemTestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "visiting the index" do
    visit vehicles_url
    assert_selector "h1", text: "Vehicles"
  end

  test "creating a Vehicle" do
    visit vehicles_url
    click_on "New Vehicle"

    fill_in "Api Driver Company", with: @vehicle.api_driver_company_id
    fill_in "Api Driver", with: @vehicle.api_driver_id
    fill_in "Api Email", with: @vehicle.api_email
    fill_in "Api First Name", with: @vehicle.api_first_name
    fill_in "Api Last Name", with: @vehicle.api_last_name
    fill_in "Api Role", with: @vehicle.api_role
    fill_in "Api Status", with: @vehicle.api_status
    fill_in "Api Username", with: @vehicle.api_username
    fill_in "Api Vehicle", with: @vehicle.api_vehicle_id
    fill_in "Edl Device", with: @vehicle.edl_device_id
    fill_in "Edl Identifier", with: @vehicle.edl_identifier
    fill_in "Edl Model", with: @vehicle.edl_model
    fill_in "Fuel Type", with: @vehicle.fuel_type
    fill_in "Ifta", with: @vehicle.ifta
    fill_in "License Plate Number", with: @vehicle.license_plate_number
    fill_in "License Plate State", with: @vehicle.license_plate_state
    fill_in "Make", with: @vehicle.make
    fill_in "Metric Units", with: @vehicle.metric_units
    fill_in "Model", with: @vehicle.model
    fill_in "Number", with: @vehicle.number
    fill_in "Prevent Auto Odometer Entry", with: @vehicle.prevent_auto_odometer_entry
    fill_in "Status", with: @vehicle.status
    fill_in "Vin", with: @vehicle.vin
    fill_in "Year", with: @vehicle.year
    click_on "Create Vehicle"

    assert_text "Vehicle was successfully created"
    click_on "Back"
  end

  test "updating a Vehicle" do
    visit vehicles_url
    click_on "Edit", match: :first

    fill_in "Api Driver Company", with: @vehicle.api_driver_company_id
    fill_in "Api Driver", with: @vehicle.api_driver_id
    fill_in "Api Email", with: @vehicle.api_email
    fill_in "Api First Name", with: @vehicle.api_first_name
    fill_in "Api Last Name", with: @vehicle.api_last_name
    fill_in "Api Role", with: @vehicle.api_role
    fill_in "Api Status", with: @vehicle.api_status
    fill_in "Api Username", with: @vehicle.api_username
    fill_in "Api Vehicle", with: @vehicle.api_vehicle_id
    fill_in "Edl Device", with: @vehicle.edl_device_id
    fill_in "Edl Identifier", with: @vehicle.edl_identifier
    fill_in "Edl Model", with: @vehicle.edl_model
    fill_in "Fuel Type", with: @vehicle.fuel_type
    fill_in "Ifta", with: @vehicle.ifta
    fill_in "License Plate Number", with: @vehicle.license_plate_number
    fill_in "License Plate State", with: @vehicle.license_plate_state
    fill_in "Make", with: @vehicle.make
    fill_in "Metric Units", with: @vehicle.metric_units
    fill_in "Model", with: @vehicle.model
    fill_in "Number", with: @vehicle.number
    fill_in "Prevent Auto Odometer Entry", with: @vehicle.prevent_auto_odometer_entry
    fill_in "Status", with: @vehicle.status
    fill_in "Vin", with: @vehicle.vin
    fill_in "Year", with: @vehicle.year
    click_on "Update Vehicle"

    assert_text "Vehicle was successfully updated"
    click_on "Back"
  end

  test "destroying a Vehicle" do
    visit vehicles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vehicle was successfully destroyed"
  end
end
