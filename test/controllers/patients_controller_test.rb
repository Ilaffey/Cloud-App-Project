require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_url
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post patients_url, params: { patient: { Doctor: @patient.Doctor, RecordlastUpdated: @patient.RecordlastUpdated, condition: @patient.condition, contactNumber: @patient.contactNumber, currentRoom: @patient.currentRoom, dob: @patient.dob, name: @patient.name, patientDepartureDate: @patient.patientDepartureDate, patientEntryDate: @patient.patientEntryDate } }
    end

    assert_redirected_to patient_url(Patient.last)
  end

  test "should show patient" do
    get patient_url(@patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_url(@patient)
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { Doctor: @patient.Doctor, RecordlastUpdated: @patient.RecordlastUpdated, condition: @patient.condition, contactNumber: @patient.contactNumber, currentRoom: @patient.currentRoom, dob: @patient.dob, name: @patient.name, patientDepartureDate: @patient.patientDepartureDate, patientEntryDate: @patient.patientEntryDate } }
    assert_redirected_to patient_url(@patient)
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete patient_url(@patient)
    end

    assert_redirected_to patients_url
  end
end
