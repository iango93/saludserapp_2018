require "application_system_test_case"

class IncidentsTest < ApplicationSystemTestCase
  setup do
    @incident = incidents(:one)
  end

  test "visiting the index" do
    visit incidents_url
    assert_selector "h1", text: "Incidents"
  end

  test "creating a Incident" do
    visit incidents_url
    click_on "New Incident"

    fill_in "Affair", with: @incident.affair
    fill_in "Company", with: @incident.company_id
    fill_in "Customer", with: @incident.customer_id
    fill_in "Description", with: @incident.description
    fill_in "Headquarter", with: @incident.headquarter_id
    fill_in "Num Incident", with: @incident.num_incident
    fill_in "State", with: @incident.state_id
    fill_in "Type Incident", with: @incident.type_incident
    click_on "Create Incident"

    assert_text "Incident was successfully created"
    click_on "Back"
  end

  test "updating a Incident" do
    visit incidents_url
    click_on "Edit", match: :first

    fill_in "Affair", with: @incident.affair
    fill_in "Company", with: @incident.company_id
    fill_in "Customer", with: @incident.customer_id
    fill_in "Description", with: @incident.description
    fill_in "Headquarter", with: @incident.headquarter_id
    fill_in "Num Incident", with: @incident.num_incident
    fill_in "State", with: @incident.state_id
    fill_in "Type Incident", with: @incident.type_incident
    click_on "Update Incident"

    assert_text "Incident was successfully updated"
    click_on "Back"
  end

  test "destroying a Incident" do
    visit incidents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incident was successfully destroyed"
  end
end
