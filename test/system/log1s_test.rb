require "application_system_test_case"

class Log1sTest < ApplicationSystemTestCase
  setup do
    @log1 = log1s(:one)
  end

  test "visiting the index" do
    visit log1s_url
    assert_selector "h1", text: "Log1s"
  end

  test "creating a Log1" do
    visit log1s_url
    click_on "New Log1"

    fill_in "Data", with: @log1.data
    fill_in "Data Trans", with: @log1.data_trans
    fill_in "User Hash", with: @log1.user_hash
    click_on "Create Log1"

    assert_text "Log1 was successfully created"
    click_on "Back"
  end

  test "updating a Log1" do
    visit log1s_url
    click_on "Edit", match: :first

    fill_in "Data", with: @log1.data
    fill_in "Data Trans", with: @log1.data_trans
    fill_in "User Hash", with: @log1.user_hash
    click_on "Update Log1"

    assert_text "Log1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Log1" do
    visit log1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Log1 was successfully destroyed"
  end
end
