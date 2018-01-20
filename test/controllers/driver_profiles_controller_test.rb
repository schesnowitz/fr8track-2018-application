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
      post driver_profiles_url, params: { driver_profile: { city: @driver_profile.city, dob: @driver_profile.dob, driver_company_id: @driver_profile.driver_company_id, first_name: @driver_profile.first_name, image: @driver_profile.image, last_name: @driver_profile.last_name, state: @driver_profile.state, street: @driver_profile.street, telephone: @driver_profile.telephone, zip: @driver_profile.zip } }
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
    patch driver_profile_url(@driver_profile), params: { driver_profile: { city: @driver_profile.city, dob: @driver_profile.dob, driver_company_id: @driver_profile.driver_company_id, first_name: @driver_profile.first_name, image: @driver_profile.image, last_name: @driver_profile.last_name, state: @driver_profile.state, street: @driver_profile.street, telephone: @driver_profile.telephone, zip: @driver_profile.zip } }
    assert_redirected_to driver_profile_url(@driver_profile)
  end

  test "should destroy driver_profile" do
    assert_difference('DriverProfile.count', -1) do
      delete driver_profile_url(@driver_profile)
    end

    assert_redirected_to driver_profiles_url
  end
end
