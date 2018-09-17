require "application_system_test_case"

class StaffsTest < ApplicationSystemTestCase
  setup do
    @staff = staffs(:one)
  end

  test "visiting the index" do
    visit staffs_url
    assert_selector "h1", text: "Staffs"
  end

  test "creating a Staff" do
    visit staffs_url
    click_on "New Staff"

    fill_in "Birthdate", with: @staff.birthdate
    fill_in "First Name", with: @staff.first_name
    fill_in "Lastname", with: @staff.lastname
    fill_in "Password Digest", with: @staff.password_digest
    fill_in "Role", with: @staff.role_id
    fill_in "State", with: @staff.state_id
    fill_in "Username", with: @staff.username
    click_on "Create Staff"

    assert_text "Staff was successfully created"
    click_on "Back"
  end

  test "updating a Staff" do
    visit staffs_url
    click_on "Edit", match: :first

    fill_in "Birthdate", with: @staff.birthdate
    fill_in "First Name", with: @staff.first_name
    fill_in "Lastname", with: @staff.lastname
    fill_in "Password Digest", with: @staff.password_digest
    fill_in "Role", with: @staff.role_id
    fill_in "State", with: @staff.state_id
    fill_in "Username", with: @staff.username
    click_on "Update Staff"

    assert_text "Staff was successfully updated"
    click_on "Back"
  end

  test "destroying a Staff" do
    visit staffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Staff was successfully destroyed"
  end
end
