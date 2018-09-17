require "application_system_test_case"

class LeadsTest < ApplicationSystemTestCase
  setup do
    @lead = leads(:one)
  end

  test "visiting the index" do
    visit leads_url
    assert_selector "h1", text: "Leads"
  end

  test "creating a Lead" do
    visit leads_url
    click_on "New Lead"

    fill_in "Active", with: @lead.active
    fill_in "Address", with: @lead.address_id
    fill_in "Advertising Medium", with: @lead.advertising_medium
    fill_in "Current Work", with: @lead.current_work
    fill_in "Customer", with: @lead.customer_id
    fill_in "Email", with: @lead.email_id
    fill_in "First Name", with: @lead.first_name
    fill_in "Lastname", with: @lead.lastname
    fill_in "Second Name", with: @lead.second_name
    fill_in "Second Suname", with: @lead.second_suname
    click_on "Create Lead"

    assert_text "Lead was successfully created"
    click_on "Back"
  end

  test "updating a Lead" do
    visit leads_url
    click_on "Edit", match: :first

    fill_in "Active", with: @lead.active
    fill_in "Address", with: @lead.address_id
    fill_in "Advertising Medium", with: @lead.advertising_medium
    fill_in "Current Work", with: @lead.current_work
    fill_in "Customer", with: @lead.customer_id
    fill_in "Email", with: @lead.email_id
    fill_in "First Name", with: @lead.first_name
    fill_in "Lastname", with: @lead.lastname
    fill_in "Second Name", with: @lead.second_name
    fill_in "Second Suname", with: @lead.second_suname
    click_on "Update Lead"

    assert_text "Lead was successfully updated"
    click_on "Back"
  end

  test "destroying a Lead" do
    visit leads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lead was successfully destroyed"
  end
end
