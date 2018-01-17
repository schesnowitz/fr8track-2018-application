require "application_system_test_case"

class KtReportsTest < ApplicationSystemTestCase
  setup do
    @kt_report = kt_reports(:one)
  end

  test "visiting the index" do
    visit kt_reports_url
    assert_selector "h1", text: "Kt Reports"
  end

  test "creating a Kt report" do
    visit kt_reports_url
    click_on "New Kt Report"

    fill_in "Time Zone", with: @kt_report.time_zone
    click_on "Create Kt report"

    assert_text "Kt report was successfully created"
    click_on "Back"
  end

  test "updating a Kt report" do
    visit kt_reports_url
    click_on "Edit", match: :first

    fill_in "Time Zone", with: @kt_report.time_zone
    click_on "Update Kt report"

    assert_text "Kt report was successfully updated"
    click_on "Back"
  end

  test "destroying a Kt report" do
    visit kt_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kt report was successfully destroyed"
  end
end
