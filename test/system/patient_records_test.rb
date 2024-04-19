require "application_system_test_case"

class PatientRecordsTest < ApplicationSystemTestCase
  setup do
    @patient_record = patient_records(:one)
  end

  test "visiting the index" do
    visit patient_records_url
    assert_selector "h1", text: "Patient records"
  end

  test "should create patient record" do
    visit patient_records_url
    click_on "New patient record"

    fill_in "Age", with: @patient_record.age
    fill_in "Gender", with: @patient_record.gender
    fill_in "Issue", with: @patient_record.issue
    fill_in "Name", with: @patient_record.name
    click_on "Create Patient record"

    assert_text "Patient record was successfully created"
    click_on "Back"
  end

  test "should update Patient record" do
    visit patient_record_url(@patient_record)
    click_on "Edit this patient record", match: :first

    fill_in "Age", with: @patient_record.age
    fill_in "Gender", with: @patient_record.gender
    fill_in "Issue", with: @patient_record.issue
    fill_in "Name", with: @patient_record.name
    click_on "Update Patient record"

    assert_text "Patient record was successfully updated"
    click_on "Back"
  end

  test "should destroy Patient record" do
    visit patient_record_url(@patient_record)
    click_on "Destroy this patient record", match: :first

    assert_text "Patient record was successfully destroyed"
  end
end
