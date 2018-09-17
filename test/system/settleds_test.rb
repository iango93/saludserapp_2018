require "application_system_test_case"

class SettledsTest < ApplicationSystemTestCase
  setup do
    @settled = settleds(:one)
  end

  test "visiting the index" do
    visit settleds_url
    assert_selector "h1", text: "Settleds"
  end

  test "creating a Settled" do
    visit settleds_url
    click_on "New Settled"

    fill_in "Afp", with: @settled.afp
    fill_in "Arl", with: @settled.arl
    fill_in "Bank Certification", with: @settled.bank_certification
    fill_in "Ccf", with: @settled.ccf
    fill_in "Ccm", with: @settled.ccm
    fill_in "Company", with: @settled.company_id
    fill_in "Customer", with: @settled.customer_id
    fill_in "Eps", with: @settled.eps
    fill_in "Headquarter", with: @settled.headquarter_id
    fill_in "Identification", with: @settled.identification_id
    fill_in "Online Contributioin Number", with: @settled.online_contributioin_number
    fill_in "Online Contribution", with: @settled.online_contribution
    fill_in "Personal Document", with: @settled.personal_document
    fill_in "Rut", with: @settled.rut
    click_on "Create Settled"

    assert_text "Settled was successfully created"
    click_on "Back"
  end

  test "updating a Settled" do
    visit settleds_url
    click_on "Edit", match: :first

    fill_in "Afp", with: @settled.afp
    fill_in "Arl", with: @settled.arl
    fill_in "Bank Certification", with: @settled.bank_certification
    fill_in "Ccf", with: @settled.ccf
    fill_in "Ccm", with: @settled.ccm
    fill_in "Company", with: @settled.company_id
    fill_in "Customer", with: @settled.customer_id
    fill_in "Eps", with: @settled.eps
    fill_in "Headquarter", with: @settled.headquarter_id
    fill_in "Identification", with: @settled.identification_id
    fill_in "Online Contributioin Number", with: @settled.online_contributioin_number
    fill_in "Online Contribution", with: @settled.online_contribution
    fill_in "Personal Document", with: @settled.personal_document
    fill_in "Rut", with: @settled.rut
    click_on "Update Settled"

    assert_text "Settled was successfully updated"
    click_on "Back"
  end

  test "destroying a Settled" do
    visit settleds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Settled was successfully destroyed"
  end
end
