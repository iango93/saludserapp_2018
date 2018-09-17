require 'test_helper'

class LeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lead = leads(:one)
  end

  test "should get index" do
    get leads_url
    assert_response :success
  end

  test "should get new" do
    get new_lead_url
    assert_response :success
  end

  test "should create lead" do
    assert_difference('Lead.count') do
      post leads_url, params: { lead: { active: @lead.active, address_id: @lead.address_id, advertising_medium: @lead.advertising_medium, current_work: @lead.current_work, customer_id: @lead.customer_id, email_id: @lead.email_id, first_name: @lead.first_name, lastname: @lead.lastname, second_name: @lead.second_name, second_suname: @lead.second_suname } }
    end

    assert_redirected_to lead_url(Lead.last)
  end

  test "should show lead" do
    get lead_url(@lead)
    assert_response :success
  end

  test "should get edit" do
    get edit_lead_url(@lead)
    assert_response :success
  end

  test "should update lead" do
    patch lead_url(@lead), params: { lead: { active: @lead.active, address_id: @lead.address_id, advertising_medium: @lead.advertising_medium, current_work: @lead.current_work, customer_id: @lead.customer_id, email_id: @lead.email_id, first_name: @lead.first_name, lastname: @lead.lastname, second_name: @lead.second_name, second_suname: @lead.second_suname } }
    assert_redirected_to lead_url(@lead)
  end

  test "should destroy lead" do
    assert_difference('Lead.count', -1) do
      delete lead_url(@lead)
    end

    assert_redirected_to leads_url
  end
end
