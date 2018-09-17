require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Account", with: @customer.account_id
    fill_in "Address", with: @customer.address_id
    fill_in "Advertising Medium", with: @customer.advertising_medium
    fill_in "Arrival Card Arl", with: @customer.arrival_card_arl
    fill_in "Arrival Card Ccf", with: @customer.arrival_card_ccf
    fill_in "Birthdate", with: @customer.birthdate
    fill_in "Civil Status", with: @customer.civil_status
    fill_in "Company", with: @customer.company_id
    fill_in "Current Work", with: @customer.current_work
    fill_in "Date Admission", with: @customer.date_admission
    fill_in "Email", with: @customer.email_id
    fill_in "Entity", with: @customer.entity_id
    fill_in "First Name", with: @customer.first_name
    fill_in "Gender", with: @customer.gender
    fill_in "Gestation Weeks", with: @customer.gestation_weeks
    fill_in "Ibc", with: @customer.ibc
    fill_in "Identification", with: @customer.identification_id
    fill_in "Lastname", with: @customer.lastname
    fill_in "Pregnancy", with: @customer.pregnancy
    fill_in "Second Name", with: @customer.second_name
    fill_in "Second Surname", with: @customer.second_surname
    fill_in "Staff", with: @customer.staff_id
    fill_in "State", with: @customer.state_id
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Account", with: @customer.account_id
    fill_in "Address", with: @customer.address_id
    fill_in "Advertising Medium", with: @customer.advertising_medium
    fill_in "Arrival Card Arl", with: @customer.arrival_card_arl
    fill_in "Arrival Card Ccf", with: @customer.arrival_card_ccf
    fill_in "Birthdate", with: @customer.birthdate
    fill_in "Civil Status", with: @customer.civil_status
    fill_in "Company", with: @customer.company_id
    fill_in "Current Work", with: @customer.current_work
    fill_in "Date Admission", with: @customer.date_admission
    fill_in "Email", with: @customer.email_id
    fill_in "Entity", with: @customer.entity_id
    fill_in "First Name", with: @customer.first_name
    fill_in "Gender", with: @customer.gender
    fill_in "Gestation Weeks", with: @customer.gestation_weeks
    fill_in "Ibc", with: @customer.ibc
    fill_in "Identification", with: @customer.identification_id
    fill_in "Lastname", with: @customer.lastname
    fill_in "Pregnancy", with: @customer.pregnancy
    fill_in "Second Name", with: @customer.second_name
    fill_in "Second Surname", with: @customer.second_surname
    fill_in "Staff", with: @customer.staff_id
    fill_in "State", with: @customer.state_id
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
