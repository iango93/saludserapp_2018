require "application_system_test_case"

class EntitiesTest < ApplicationSystemTestCase
  setup do
    @entity = entities(:one)
  end

  test "visiting the index" do
    visit entities_url
    assert_selector "h1", text: "Entities"
  end

  test "creating a Entity" do
    visit entities_url
    click_on "New Entity"

    fill_in "Category", with: @entity.category_id
    fill_in "Code", with: @entity.code
    fill_in "Company", with: @entity.company_id
    fill_in "Level Arl", with: @entity.level_arl
    fill_in "Name Afp", with: @entity.name_afp
    fill_in "Name Arl", with: @entity.name_arl
    fill_in "Name Ccf", with: @entity.name_ccf
    fill_in "Name Eps", with: @entity.name_eps
    fill_in "Percent", with: @entity.percent
    fill_in "Service", with: @entity.service
    fill_in "State", with: @entity.state_id
    fill_in "Type", with: @entity.type
    click_on "Create Entity"

    assert_text "Entity was successfully created"
    click_on "Back"
  end

  test "updating a Entity" do
    visit entities_url
    click_on "Edit", match: :first

    fill_in "Category", with: @entity.category_id
    fill_in "Code", with: @entity.code
    fill_in "Company", with: @entity.company_id
    fill_in "Level Arl", with: @entity.level_arl
    fill_in "Name Afp", with: @entity.name_afp
    fill_in "Name Arl", with: @entity.name_arl
    fill_in "Name Ccf", with: @entity.name_ccf
    fill_in "Name Eps", with: @entity.name_eps
    fill_in "Percent", with: @entity.percent
    fill_in "Service", with: @entity.service
    fill_in "State", with: @entity.state_id
    fill_in "Type", with: @entity.type
    click_on "Update Entity"

    assert_text "Entity was successfully updated"
    click_on "Back"
  end

  test "destroying a Entity" do
    visit entities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entity was successfully destroyed"
  end
end
