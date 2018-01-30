require 'test_helper'

class ShipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipment = shipments(:one)
  end

  test "should get index" do
    get shipments_url
    assert_response :success
  end

  test "should get new" do
    get new_shipment_url
    assert_response :success
  end

  test "should create shipment" do
    assert_difference('Shipment.count') do
      post shipments_url, params: { shipment: { agent_fee: @shipment.agent_fee, booking_fee: @shipment.booking_fee, broker_shipper_load_id: @shipment.broker_shipper_load_id, celsius: @shipment.celsius, commodity: @shipment.commodity, delivery_date: @shipment.delivery_date, delivery_notes: @shipment.delivery_notes, delivery_time: @shipment.delivery_time, destination_city: @shipment.destination_city, destination_contact: @shipment.destination_contact, destination_latitude: @shipment.destination_latitude, destination_longitude: @shipment.destination_longitude, destination_phone: @shipment.destination_phone, destination_postal_code: @shipment.destination_postal_code, destination_state_provence: @shipment.destination_state_provence, destination_street: @shipment.destination_street, dimentions: @shipment.dimentions, driver_cents_pm: @shipment.driver_cents_pm, equipment_type: @shipment.equipment_type, fahrenheit: @shipment.fahrenheit, invoice_price: @shipment.invoice_price, is_celsius: @shipment.is_celsius, is_fahrenheit: @shipment.is_fahrenheit, is_hazmat: @shipment.is_hazmat, is_kilograms: @shipment.is_kilograms, is_pounds: @shipment.is_pounds, kilograms: @shipment.kilograms, kilometers: @shipment.kilometers, load_size: @shipment.load_size, miles: @shipment.miles, miles_or_km: @shipment.miles_or_km, needs_temp_control: @shipment.needs_temp_control, origin_city: @shipment.origin_city, origin_contact: @shipment.origin_contact, origin_latitude: @shipment.origin_latitude, origin_longitude: @shipment.origin_longitude, origin_phone: @shipment.origin_phone, origin_postal_code: @shipment.origin_postal_code, origin_state_provence: @shipment.origin_state_provence, origin_street: @shipment.origin_street, percent_coverted_to_dollars: @shipment.percent_coverted_to_dollars, percent_deducted: @shipment.percent_deducted, percentage_id: @shipment.percentage_id, pick_up_date: @shipment.pick_up_date, pick_up_notes: @shipment.pick_up_notes, pick_up_time: @shipment.pick_up_time, pounds: @shipment.pounds, rate_after_booking_fee: @shipment.rate_after_booking_fee, rate_to_owner_operator: @shipment.rate_to_owner_operator, receiver_company_name: @shipment.receiver_company_name, shipper_company_name: @shipment.shipper_company_name, special_instructions: @shipment.special_instructions, status_name: @shipment.status_name, total_company_expenses: @shipment.total_company_expenses, updated_by: @shipment.updated_by, weight: @shipment.weight } }
    end

    assert_redirected_to shipment_url(Shipment.last)
  end

  test "should show shipment" do
    get shipment_url(@shipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipment_url(@shipment)
    assert_response :success
  end

  test "should update shipment" do
    patch shipment_url(@shipment), params: { shipment: { agent_fee: @shipment.agent_fee, booking_fee: @shipment.booking_fee, broker_shipper_load_id: @shipment.broker_shipper_load_id, celsius: @shipment.celsius, commodity: @shipment.commodity, delivery_date: @shipment.delivery_date, delivery_notes: @shipment.delivery_notes, delivery_time: @shipment.delivery_time, destination_city: @shipment.destination_city, destination_contact: @shipment.destination_contact, destination_latitude: @shipment.destination_latitude, destination_longitude: @shipment.destination_longitude, destination_phone: @shipment.destination_phone, destination_postal_code: @shipment.destination_postal_code, destination_state_provence: @shipment.destination_state_provence, destination_street: @shipment.destination_street, dimentions: @shipment.dimentions, driver_cents_pm: @shipment.driver_cents_pm, equipment_type: @shipment.equipment_type, fahrenheit: @shipment.fahrenheit, invoice_price: @shipment.invoice_price, is_celsius: @shipment.is_celsius, is_fahrenheit: @shipment.is_fahrenheit, is_hazmat: @shipment.is_hazmat, is_kilograms: @shipment.is_kilograms, is_pounds: @shipment.is_pounds, kilograms: @shipment.kilograms, kilometers: @shipment.kilometers, load_size: @shipment.load_size, miles: @shipment.miles, miles_or_km: @shipment.miles_or_km, needs_temp_control: @shipment.needs_temp_control, origin_city: @shipment.origin_city, origin_contact: @shipment.origin_contact, origin_latitude: @shipment.origin_latitude, origin_longitude: @shipment.origin_longitude, origin_phone: @shipment.origin_phone, origin_postal_code: @shipment.origin_postal_code, origin_state_provence: @shipment.origin_state_provence, origin_street: @shipment.origin_street, percent_coverted_to_dollars: @shipment.percent_coverted_to_dollars, percent_deducted: @shipment.percent_deducted, percentage_id: @shipment.percentage_id, pick_up_date: @shipment.pick_up_date, pick_up_notes: @shipment.pick_up_notes, pick_up_time: @shipment.pick_up_time, pounds: @shipment.pounds, rate_after_booking_fee: @shipment.rate_after_booking_fee, rate_to_owner_operator: @shipment.rate_to_owner_operator, receiver_company_name: @shipment.receiver_company_name, shipper_company_name: @shipment.shipper_company_name, special_instructions: @shipment.special_instructions, status_name: @shipment.status_name, total_company_expenses: @shipment.total_company_expenses, updated_by: @shipment.updated_by, weight: @shipment.weight } }
    assert_redirected_to shipment_url(@shipment)
  end

  test "should destroy shipment" do
    assert_difference('Shipment.count', -1) do
      delete shipment_url(@shipment)
    end

    assert_redirected_to shipments_url
  end
end
