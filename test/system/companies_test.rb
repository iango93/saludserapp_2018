require "application_system_test_case"

class CompaniesTest < ApplicationSystemTestCase
  setup do
    @company = companies(:one)
  end

  test "visiting the index" do
    visit companies_url
    assert_selector "h1", text: "Companies"
  end

  test "creating a Company" do
    visit companies_url
    click_on "New Company"

    fill_in "Address", with: @company.address_id
    fill_in "Cc Legal Representative", with: @company.cc_legal_representative
    fill_in "Code Economic Activity", with: @company.code_economic_activity
    fill_in "Creation Date", with: @company.creation_date
    fill_in "Economic Activity", with: @company.economic_activity
    fill_in "Email", with: @company.email_id
    fill_in "Identification", with: @company.identification_id
    fill_in "Legal Representative", with: @company.legal_representative
    fill_in "Name", with: @company.name
    fill_in "State", with: @company.state_id
    click_on "Create Company"

    assert_text "Company was successfully created"
    click_on "Back"
  end

  test "updating a Company" do
    visit companies_url
    click_on "Edit", match: :first

    fill_in "Address", with: @company.address_id
    fill_in "Cc Legal Representative", with: @company.cc_legal_representative
    fill_in "Code Economic Activity", with: @company.code_economic_activity
    fill_in "Creation Date", with: @company.creation_date
    fill_in "Economic Activity", with: @company.economic_activity
    fill_in "Email", with: @company.email_id
    fill_in "Identification", with: @company.identification_id
    fill_in "Legal Representative", with: @company.legal_representative
    fill_in "Name", with: @company.name
    fill_in "State", with: @company.state_id
    click_on "Update Company"

    assert_text "Company was successfully updated"
    click_on "Back"
  end

  test "destroying a Company" do
    visit companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company was successfully destroyed"
  end
end
