require "test_helper"

class PatientRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_record = patient_records(:one)
  end

  test "should get index" do
    get patient_records_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_record_url
    assert_response :success
  end

  test "should create patient_record" do
    assert_difference("PatientRecord.count") do
      post patient_records_url, params: { patient_record: { age: @patient_record.age, gender: @patient_record.gender, issue: @patient_record.issue, name: @patient_record.name } }
    end

    assert_redirected_to patient_record_url(PatientRecord.last)
  end

  test "should show patient_record" do
    get patient_record_url(@patient_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_record_url(@patient_record)
    assert_response :success
  end

  test "should update patient_record" do
    patch patient_record_url(@patient_record), params: { patient_record: { age: @patient_record.age, gender: @patient_record.gender, issue: @patient_record.issue, name: @patient_record.name } }
    assert_redirected_to patient_record_url(@patient_record)
  end

  test "should destroy patient_record" do
    assert_difference("PatientRecord.count", -1) do
      delete patient_record_url(@patient_record)
    end

    assert_redirected_to patient_records_url
  end
end
