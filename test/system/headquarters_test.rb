require "application_system_test_case"

class HeadquartersTest < ApplicationSystemTestCase
  setup do
    @headquarter = headquarters(:one)
  end

  test "visiting the index" do
    visit headquarters_url
    assert_selector "h1", text: "Headquarters"
  end

  test "creating a Headquarter" do
    visit headquarters_url
    click_on "New Headquarter"

    fill_in "Address", with: @headquarter.address_id
    fill_in "Code", with: @headquarter.code
    fill_in "Company", with: @headquarter.company_id
    fill_in "Email", with: @headquarter.email_id
    fill_in "Name", with: @headquarter.name
    fill_in "State", with: @headquarter.state_id
    click_on "Create Headquarter"

    assert_text "Headquarter was successfully created"
    click_on "Back"
  end

  test "updating a Headquarter" do
    visit headquarters_url
    click_on "Edit", match: :first

    fill_in "Address", with: @headquarter.address_id
    fill_in "Code", with: @headquarter.code
    fill_in "Company", with: @headquarter.company_id
    fill_in "Email", with: @headquarter.email_id
    fill_in "Name", with: @headquarter.name
    fill_in "State", with: @headquarter.state_id
    click_on "Update Headquarter"

    assert_text "Headquarter was successfully updated"
    click_on "Back"
  end

  test "destroying a Headquarter" do
    visit headquarters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Headquarter was successfully destroyed"
  end
end
