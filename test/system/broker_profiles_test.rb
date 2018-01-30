require "application_system_test_case"

class BrokerProfilesTest < ApplicationSystemTestCase
  setup do
    @broker_profile = broker_profiles(:one)
  end

  test "visiting the index" do
    visit broker_profiles_url
    assert_selector "h1", text: "Broker Profiles"
  end

  test "creating a Broker profile" do
    visit broker_profiles_url
    click_on "New Broker Profile"

    fill_in "Broker Mc Number", with: @broker_profile.broker_mc_number
    fill_in "Carrier Mc Number", with: @broker_profile.carrier_mc_number
    fill_in "City", with: @broker_profile.city
    fill_in "Company Name", with: @broker_profile.company_name
    fill_in "Contact Person0", with: @broker_profile.contact_person0
    fill_in "Email", with: @broker_profile.email
    fill_in "Fax", with: @broker_profile.fax
    fill_in "Logo", with: @broker_profile.logo
    fill_in "Postal Code", with: @broker_profile.postal_code
    fill_in "State Provence", with: @broker_profile.state_provence
    fill_in "Street", with: @broker_profile.street
    fill_in "Telephone", with: @broker_profile.telephone
    fill_in "Us Dot Number", with: @broker_profile.us_dot_number
    fill_in "Website", with: @broker_profile.website
    click_on "Create Broker profile"

    assert_text "Broker profile was successfully created"
    click_on "Back"
  end

  test "updating a Broker profile" do
    visit broker_profiles_url
    click_on "Edit", match: :first

    fill_in "Broker Mc Number", with: @broker_profile.broker_mc_number
    fill_in "Carrier Mc Number", with: @broker_profile.carrier_mc_number
    fill_in "City", with: @broker_profile.city
    fill_in "Company Name", with: @broker_profile.company_name
    fill_in "Contact Person0", with: @broker_profile.contact_person0
    fill_in "Email", with: @broker_profile.email
    fill_in "Fax", with: @broker_profile.fax
    fill_in "Logo", with: @broker_profile.logo
    fill_in "Postal Code", with: @broker_profile.postal_code
    fill_in "State Provence", with: @broker_profile.state_provence
    fill_in "Street", with: @broker_profile.street
    fill_in "Telephone", with: @broker_profile.telephone
    fill_in "Us Dot Number", with: @broker_profile.us_dot_number
    fill_in "Website", with: @broker_profile.website
    click_on "Update Broker profile"

    assert_text "Broker profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Broker profile" do
    visit broker_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Broker profile was successfully destroyed"
  end
end
