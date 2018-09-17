require "application_system_test_case"

class NumberAccountsTest < ApplicationSystemTestCase
  setup do
    @number_account = number_accounts(:one)
  end

  test "visiting the index" do
    visit number_accounts_url
    assert_selector "h1", text: "Number Accounts"
  end

  test "creating a Number account" do
    visit number_accounts_url
    click_on "New Number Account"

    fill_in "Bank", with: @number_account.bank
    fill_in "Identification", with: @number_account.identification_id
    fill_in "Owner Account", with: @number_account.owner_account
    fill_in "Type Account", with: @number_account.type_account
    click_on "Create Number account"

    assert_text "Number account was successfully created"
    click_on "Back"
  end

  test "updating a Number account" do
    visit number_accounts_url
    click_on "Edit", match: :first

    fill_in "Bank", with: @number_account.bank
    fill_in "Identification", with: @number_account.identification_id
    fill_in "Owner Account", with: @number_account.owner_account
    fill_in "Type Account", with: @number_account.type_account
    click_on "Update Number account"

    assert_text "Number account was successfully updated"
    click_on "Back"
  end

  test "destroying a Number account" do
    visit number_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Number account was successfully destroyed"
  end
end
