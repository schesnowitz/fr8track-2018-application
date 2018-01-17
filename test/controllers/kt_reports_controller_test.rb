require 'test_helper'

class KtReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kt_report = kt_reports(:one)
  end

  test "should get index" do
    get kt_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_kt_report_url
    assert_response :success
  end

  test "should create kt_report" do
    assert_difference('KtReport.count') do
      post kt_reports_url, params: { kt_report: { time_zone: @kt_report.time_zone } }
    end

    assert_redirected_to kt_report_url(KtReport.last)
  end

  test "should show kt_report" do
    get kt_report_url(@kt_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_kt_report_url(@kt_report)
    assert_response :success
  end

  test "should update kt_report" do
    patch kt_report_url(@kt_report), params: { kt_report: { time_zone: @kt_report.time_zone } }
    assert_redirected_to kt_report_url(@kt_report)
  end

  test "should destroy kt_report" do
    assert_difference('KtReport.count', -1) do
      delete kt_report_url(@kt_report)
    end

    assert_redirected_to kt_reports_url
  end
end
