require "application_system_test_case"

class DriverProfilesTest < ApplicationSystemTestCase
  setup do
    @driver_profile = driver_profiles(:one)
  end

  test "visiting the index" do
    visit driver_profiles_url
    assert_selector "h1", text: "Driver Profiles"
  end

  test "creating a Driver profile" do
    visit driver_profiles_url
    click_on "New Driver Profile"

    fill_in "City", with: @driver_profile.city
    fill_in "Dob", with: @driver_profile.dob
    fill_in "Driver Company", with: @driver_profile.driver_company_id
    fill_in "First Name", with: @driver_profile.first_name
    fill_in "Image", with: @driver_profile.image
    fill_in "Last Name", with: @driver_profile.last_name
    fill_in "State", with: @driver_profile.state
    fill_in "Street", with: @driver_profile.street
    fill_in "Telephone", with: @driver_profile.telephone
    fill_in "Zip", with: @driver_profile.zip
    click_on "Create Driver profile"

    assert_text "Driver profile was successfully created"
    click_on "Back"
  end

  test "updating a Driver profile" do
    visit driver_profiles_url
    click_on "Edit", match: :first

    fill_in "City", with: @driver_profile.city
    fill_in "Dob", with: @driver_profile.dob
    fill_in "Driver Company", with: @driver_profile.driver_company_id
    fill_in "First Name", with: @driver_profile.first_name
    fill_in "Image", with: @driver_profile.image
    fill_in "Last Name", with: @driver_profile.last_name
    fill_in "State", with: @driver_profile.state
    fill_in "Street", with: @driver_profile.street
    fill_in "Telephone", with: @driver_profile.telephone
    fill_in "Zip", with: @driver_profile.zip
    click_on "Update Driver profile"

    assert_text "Driver profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Driver profile" do
    visit driver_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Driver profile was successfully destroyed"
  end
end
