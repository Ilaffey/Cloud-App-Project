require "application_system_test_case"

class PatientsTest < ApplicationSystemTestCase
  setup do
    @patient = patients(:one)
  end

  test "visiting the index" do
    visit patients_url
    assert_selector "h1", text: "Patients"
  end

  test "creating a Patient" do
    visit patients_url
    click_on "New Patient"

    fill_in "Doctor", with: @patient.Doctor
    fill_in "Recordlastupdated", with: @patient.RecordlastUpdated
    fill_in "Condition", with: @patient.condition
    fill_in "Contactnumber", with: @patient.contactNumber
    fill_in "Currentroom", with: @patient.currentRoom
    fill_in "Dob", with: @patient.dob
    fill_in "Name", with: @patient.name
    fill_in "Patientdeparturedate", with: @patient.patientDepartureDate
    fill_in "Patiententrydate", with: @patient.patientEntryDate
    click_on "Create Patient"

    assert_text "Patient was successfully created"
    click_on "Back"
  end

  test "updating a Patient" do
    visit patients_url
    click_on "Edit", match: :first

    fill_in "Doctor", with: @patient.Doctor
    fill_in "Recordlastupdated", with: @patient.RecordlastUpdated
    fill_in "Condition", with: @patient.condition
    fill_in "Contactnumber", with: @patient.contactNumber
    fill_in "Currentroom", with: @patient.currentRoom
    fill_in "Dob", with: @patient.dob
    fill_in "Name", with: @patient.name
    fill_in "Patientdeparturedate", with: @patient.patientDepartureDate
    fill_in "Patiententrydate", with: @patient.patientEntryDate
    click_on "Update Patient"

    assert_text "Patient was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient" do
    visit patients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient was successfully destroyed"
  end
end
