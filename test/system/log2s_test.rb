require "application_system_test_case"

class Log2sTest < ApplicationSystemTestCase
  setup do
    @log2 = log2s(:one)
  end

  test "visiting the index" do
    visit log2s_url
    assert_selector "h1", text: "Log2s"
  end

  test "creating a Log2" do
    visit log2s_url
    click_on "New Log2"

    fill_in "Data", with: @log2.data
    fill_in "Data Trans", with: @log2.data_trans
    fill_in "User Hash", with: @log2.user_hash
    click_on "Create Log2"

    assert_text "Log2 was successfully created"
    click_on "Back"
  end

  test "updating a Log2" do
    visit log2s_url
    click_on "Edit", match: :first

    fill_in "Data", with: @log2.data
    fill_in "Data Trans", with: @log2.data_trans
    fill_in "User Hash", with: @log2.user_hash
    click_on "Update Log2"

    assert_text "Log2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Log2" do
    visit log2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Log2 was successfully destroyed"
  end
end
