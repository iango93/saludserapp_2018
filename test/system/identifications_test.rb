require "application_system_test_case"

class IdentificationsTest < ApplicationSystemTestCase
  setup do
    @identification = identifications(:one)
  end

  test "visiting the index" do
    visit identifications_url
    assert_selector "h1", text: "Identifications"
  end

  test "creating a Identification" do
    visit identifications_url
    click_on "New Identification"

    fill_in "Check Digit", with: @identification.check_digit
    fill_in "Number", with: @identification.number
    fill_in "State", with: @identification.state_id
    fill_in "Type", with: @identification.type
    click_on "Create Identification"

    assert_text "Identification was successfully created"
    click_on "Back"
  end

  test "updating a Identification" do
    visit identifications_url
    click_on "Edit", match: :first

    fill_in "Check Digit", with: @identification.check_digit
    fill_in "Number", with: @identification.number
    fill_in "State", with: @identification.state_id
    fill_in "Type", with: @identification.type
    click_on "Update Identification"

    assert_text "Identification was successfully updated"
    click_on "Back"
  end

  test "destroying a Identification" do
    visit identifications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Identification was successfully destroyed"
  end
end
