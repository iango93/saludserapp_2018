require "application_system_test_case"

class BeneficiariesTest < ApplicationSystemTestCase
  setup do
    @beneficiary = beneficiaries(:one)
  end

  test "visiting the index" do
    visit beneficiaries_url
    assert_selector "h1", text: "Beneficiaries"
  end

  test "creating a Beneficiary" do
    visit beneficiaries_url
    click_on "New Beneficiary"

    fill_in "Birthday", with: @beneficiary.birthday
    fill_in "Customer", with: @beneficiary.customer_id
    fill_in "First Name", with: @beneficiary.first_name
    fill_in "Gender", with: @beneficiary.gender
    fill_in "Identification", with: @beneficiary.identification_id
    fill_in "Lastname", with: @beneficiary.lastname
    fill_in "Relationship", with: @beneficiary.relationship
    fill_in "Second Name", with: @beneficiary.second_name
    fill_in "Second Surname", with: @beneficiary.second_surname
    fill_in "State", with: @beneficiary.state_id
    click_on "Create Beneficiary"

    assert_text "Beneficiary was successfully created"
    click_on "Back"
  end

  test "updating a Beneficiary" do
    visit beneficiaries_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @beneficiary.birthday
    fill_in "Customer", with: @beneficiary.customer_id
    fill_in "First Name", with: @beneficiary.first_name
    fill_in "Gender", with: @beneficiary.gender
    fill_in "Identification", with: @beneficiary.identification_id
    fill_in "Lastname", with: @beneficiary.lastname
    fill_in "Relationship", with: @beneficiary.relationship
    fill_in "Second Name", with: @beneficiary.second_name
    fill_in "Second Surname", with: @beneficiary.second_surname
    fill_in "State", with: @beneficiary.state_id
    click_on "Update Beneficiary"

    assert_text "Beneficiary was successfully updated"
    click_on "Back"
  end

  test "destroying a Beneficiary" do
    visit beneficiaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Beneficiary was successfully destroyed"
  end
end
