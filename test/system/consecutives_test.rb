require "application_system_test_case"

class ConsecutivesTest < ApplicationSystemTestCase
  setup do
    @consecutive = consecutives(:one)
  end

  test "visiting the index" do
    visit consecutives_url
    assert_selector "h1", text: "Consecutives"
  end

  test "creating a Consecutive" do
    visit consecutives_url
    click_on "New Consecutive"

    fill_in "Company", with: @consecutive.company_id
    fill_in "Customer", with: @consecutive.customer_id
    fill_in "Folio Company", with: @consecutive.folio_company
    fill_in "Suffix", with: @consecutive.suffix
    click_on "Create Consecutive"

    assert_text "Consecutive was successfully created"
    click_on "Back"
  end

  test "updating a Consecutive" do
    visit consecutives_url
    click_on "Edit", match: :first

    fill_in "Company", with: @consecutive.company_id
    fill_in "Customer", with: @consecutive.customer_id
    fill_in "Folio Company", with: @consecutive.folio_company
    fill_in "Suffix", with: @consecutive.suffix
    click_on "Update Consecutive"

    assert_text "Consecutive was successfully updated"
    click_on "Back"
  end

  test "destroying a Consecutive" do
    visit consecutives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consecutive was successfully destroyed"
  end
end
