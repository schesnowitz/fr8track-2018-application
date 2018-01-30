require "application_system_test_case"

class ShipmentsTest < ApplicationSystemTestCase
  setup do
    @shipment = shipments(:one)
  end

  test "visiting the index" do
    visit shipments_url
    assert_selector "h1", text: "Shipments"
  end

  test "creating a Shipment" do
    visit shipments_url
    click_on "New Shipment"

    fill_in "Agent Fee", with: @shipment.agent_fee
    fill_in "Booking Fee", with: @shipment.booking_fee
    fill_in "Broker Shipper Load", with: @shipment.broker_shipper_load_id
    fill_in "Celsius", with: @shipment.celsius
    fill_in "Commodity", with: @shipment.commodity
    fill_in "Delivery Date", with: @shipment.delivery_date
    fill_in "Delivery Notes", with: @shipment.delivery_notes
    fill_in "Delivery Time", with: @shipment.delivery_time
    fill_in "Destination City", with: @shipment.destination_city
    fill_in "Destination Contact", with: @shipment.destination_contact
    fill_in "Destination Latitude", with: @shipment.destination_latitude
    fill_in "Destination Longitude", with: @shipment.destination_longitude
    fill_in "Destination Phone", with: @shipment.destination_phone
    fill_in "Destination Postal Code", with: @shipment.destination_postal_code
    fill_in "Destination State Provence", with: @shipment.destination_state_provence
    fill_in "Destination Street", with: @shipment.destination_street
    fill_in "Dimentions", with: @shipment.dimentions
    fill_in "Driver Cents Pm", with: @shipment.driver_cents_pm
    fill_in "Equipment Type", with: @shipment.equipment_type
    fill_in "Fahrenheit", with: @shipment.fahrenheit
    fill_in "Invoice Price", with: @shipment.invoice_price
    fill_in "Is Celsius", with: @shipment.is_celsius
    fill_in "Is Fahrenheit", with: @shipment.is_fahrenheit
    fill_in "Is Hazmat", with: @shipment.is_hazmat
    fill_in "Is Kilograms", with: @shipment.is_kilograms
    fill_in "Is Pounds", with: @shipment.is_pounds
    fill_in "Kilograms", with: @shipment.kilograms
    fill_in "Kilometers", with: @shipment.kilometers
    fill_in "Load Size", with: @shipment.load_size
    fill_in "Miles", with: @shipment.miles
    fill_in "Miles Or Km", with: @shipment.miles_or_km
    fill_in "Needs Temp Control", with: @shipment.needs_temp_control
    fill_in "Origin City", with: @shipment.origin_city
    fill_in "Origin Contact", with: @shipment.origin_contact
    fill_in "Origin Latitude", with: @shipment.origin_latitude
    fill_in "Origin Longitude", with: @shipment.origin_longitude
    fill_in "Origin Phone", with: @shipment.origin_phone
    fill_in "Origin Postal Code", with: @shipment.origin_postal_code
    fill_in "Origin State Provence", with: @shipment.origin_state_provence
    fill_in "Origin Street", with: @shipment.origin_street
    fill_in "Percent Coverted To Dollars", with: @shipment.percent_coverted_to_dollars
    fill_in "Percent Deducted", with: @shipment.percent_deducted
    fill_in "Percentage", with: @shipment.percentage_id
    fill_in "Pick Up Date", with: @shipment.pick_up_date
    fill_in "Pick Up Notes", with: @shipment.pick_up_notes
    fill_in "Pick Up Time", with: @shipment.pick_up_time
    fill_in "Pounds", with: @shipment.pounds
    fill_in "Rate After Booking Fee", with: @shipment.rate_after_booking_fee
    fill_in "Rate To Owner Operator", with: @shipment.rate_to_owner_operator
    fill_in "Receiver Company Name", with: @shipment.receiver_company_name
    fill_in "Shipper Company Name", with: @shipment.shipper_company_name
    fill_in "Special Instructions", with: @shipment.special_instructions
    fill_in "Status Name", with: @shipment.status_name
    fill_in "Total Company Expenses", with: @shipment.total_company_expenses
    fill_in "Updated By", with: @shipment.updated_by
    fill_in "Weight", with: @shipment.weight
    click_on "Create Shipment"

    assert_text "Shipment was successfully created"
    click_on "Back"
  end

  test "updating a Shipment" do
    visit shipments_url
    click_on "Edit", match: :first

    fill_in "Agent Fee", with: @shipment.agent_fee
    fill_in "Booking Fee", with: @shipment.booking_fee
    fill_in "Broker Shipper Load", with: @shipment.broker_shipper_load_id
    fill_in "Celsius", with: @shipment.celsius
    fill_in "Commodity", with: @shipment.commodity
    fill_in "Delivery Date", with: @shipment.delivery_date
    fill_in "Delivery Notes", with: @shipment.delivery_notes
    fill_in "Delivery Time", with: @shipment.delivery_time
    fill_in "Destination City", with: @shipment.destination_city
    fill_in "Destination Contact", with: @shipment.destination_contact
    fill_in "Destination Latitude", with: @shipment.destination_latitude
    fill_in "Destination Longitude", with: @shipment.destination_longitude
    fill_in "Destination Phone", with: @shipment.destination_phone
    fill_in "Destination Postal Code", with: @shipment.destination_postal_code
    fill_in "Destination State Provence", with: @shipment.destination_state_provence
    fill_in "Destination Street", with: @shipment.destination_street
    fill_in "Dimentions", with: @shipment.dimentions
    fill_in "Driver Cents Pm", with: @shipment.driver_cents_pm
    fill_in "Equipment Type", with: @shipment.equipment_type
    fill_in "Fahrenheit", with: @shipment.fahrenheit
    fill_in "Invoice Price", with: @shipment.invoice_price
    fill_in "Is Celsius", with: @shipment.is_celsius
    fill_in "Is Fahrenheit", with: @shipment.is_fahrenheit
    fill_in "Is Hazmat", with: @shipment.is_hazmat
    fill_in "Is Kilograms", with: @shipment.is_kilograms
    fill_in "Is Pounds", with: @shipment.is_pounds
    fill_in "Kilograms", with: @shipment.kilograms
    fill_in "Kilometers", with: @shipment.kilometers
    fill_in "Load Size", with: @shipment.load_size
    fill_in "Miles", with: @shipment.miles
    fill_in "Miles Or Km", with: @shipment.miles_or_km
    fill_in "Needs Temp Control", with: @shipment.needs_temp_control
    fill_in "Origin City", with: @shipment.origin_city
    fill_in "Origin Contact", with: @shipment.origin_contact
    fill_in "Origin Latitude", with: @shipment.origin_latitude
    fill_in "Origin Longitude", with: @shipment.origin_longitude
    fill_in "Origin Phone", with: @shipment.origin_phone
    fill_in "Origin Postal Code", with: @shipment.origin_postal_code
    fill_in "Origin State Provence", with: @shipment.origin_state_provence
    fill_in "Origin Street", with: @shipment.origin_street
    fill_in "Percent Coverted To Dollars", with: @shipment.percent_coverted_to_dollars
    fill_in "Percent Deducted", with: @shipment.percent_deducted
    fill_in "Percentage", with: @shipment.percentage_id
    fill_in "Pick Up Date", with: @shipment.pick_up_date
    fill_in "Pick Up Notes", with: @shipment.pick_up_notes
    fill_in "Pick Up Time", with: @shipment.pick_up_time
    fill_in "Pounds", with: @shipment.pounds
    fill_in "Rate After Booking Fee", with: @shipment.rate_after_booking_fee
    fill_in "Rate To Owner Operator", with: @shipment.rate_to_owner_operator
    fill_in "Receiver Company Name", with: @shipment.receiver_company_name
    fill_in "Shipper Company Name", with: @shipment.shipper_company_name
    fill_in "Special Instructions", with: @shipment.special_instructions
    fill_in "Status Name", with: @shipment.status_name
    fill_in "Total Company Expenses", with: @shipment.total_company_expenses
    fill_in "Updated By", with: @shipment.updated_by
    fill_in "Weight", with: @shipment.weight
    click_on "Update Shipment"

    assert_text "Shipment was successfully updated"
    click_on "Back"
  end

  test "destroying a Shipment" do
    visit shipments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shipment was successfully destroyed"
  end
end
