require "application_system_test_case"

class AccountnamesTest < ApplicationSystemTestCase
  setup do
    @accountname = accountnames(:one)
  end

  test "visiting the index" do
    visit accountnames_url
    assert_selector "h1", text: "Accountnames"
  end

  test "creating a Accountname" do
    visit accountnames_url
    click_on "New Accountname"

    fill_in "Address", with: @accountname.address_id
    fill_in "Email", with: @accountname.email_id
    fill_in "Identification", with: @accountname.identification_id
    fill_in "Type Account", with: @accountname.type_account
    click_on "Create Accountname"

    assert_text "Accountname was successfully created"
    click_on "Back"
  end

  test "updating a Accountname" do
    visit accountnames_url
    click_on "Edit", match: :first

    fill_in "Address", with: @accountname.address_id
    fill_in "Email", with: @accountname.email_id
    fill_in "Identification", with: @accountname.identification_id
    fill_in "Type Account", with: @accountname.type_account
    click_on "Update Accountname"

    assert_text "Accountname was successfully updated"
    click_on "Back"
  end

  test "destroying a Accountname" do
    visit accountnames_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Accountname was successfully destroyed"
  end
end
