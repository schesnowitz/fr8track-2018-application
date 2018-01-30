require 'test_helper'

class BrokerProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @broker_profile = broker_profiles(:one)
  end

  test "should get index" do
    get broker_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_broker_profile_url
    assert_response :success
  end

  test "should create broker_profile" do
    assert_difference('BrokerProfile.count') do
      post broker_profiles_url, params: { broker_profile: { broker_mc_number: @broker_profile.broker_mc_number, carrier_mc_number: @broker_profile.carrier_mc_number, city: @broker_profile.city, company_name: @broker_profile.company_name, contact_person0: @broker_profile.contact_person0, email: @broker_profile.email, fax: @broker_profile.fax, logo: @broker_profile.logo, postal_code: @broker_profile.postal_code, state_provence: @broker_profile.state_provence, street: @broker_profile.street, telephone: @broker_profile.telephone, us_dot_number: @broker_profile.us_dot_number, website: @broker_profile.website } }
    end

    assert_redirected_to broker_profile_url(BrokerProfile.last)
  end

  test "should show broker_profile" do
    get broker_profile_url(@broker_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_broker_profile_url(@broker_profile)
    assert_response :success
  end

  test "should update broker_profile" do
    patch broker_profile_url(@broker_profile), params: { broker_profile: { broker_mc_number: @broker_profile.broker_mc_number, carrier_mc_number: @broker_profile.carrier_mc_number, city: @broker_profile.city, company_name: @broker_profile.company_name, contact_person0: @broker_profile.contact_person0, email: @broker_profile.email, fax: @broker_profile.fax, logo: @broker_profile.logo, postal_code: @broker_profile.postal_code, state_provence: @broker_profile.state_provence, street: @broker_profile.street, telephone: @broker_profile.telephone, us_dot_number: @broker_profile.us_dot_number, website: @broker_profile.website } }
    assert_redirected_to broker_profile_url(@broker_profile)
  end

  test "should destroy broker_profile" do
    assert_difference('BrokerProfile.count', -1) do
      delete broker_profile_url(@broker_profile)
    end

    assert_redirected_to broker_profiles_url
  end
end
