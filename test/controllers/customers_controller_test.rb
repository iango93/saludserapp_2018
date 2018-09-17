require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { account_id: @customer.account_id, address_id: @customer.address_id, advertising_medium: @customer.advertising_medium, arrival_card_arl: @customer.arrival_card_arl, arrival_card_ccf: @customer.arrival_card_ccf, birthdate: @customer.birthdate, civil_status: @customer.civil_status, company_id: @customer.company_id, current_work: @customer.current_work, date_admission: @customer.date_admission, email_id: @customer.email_id, entity_id: @customer.entity_id, first_name: @customer.first_name, gender: @customer.gender, gestation_weeks: @customer.gestation_weeks, ibc: @customer.ibc, identification_id: @customer.identification_id, lastname: @customer.lastname, pregnancy: @customer.pregnancy, second_name: @customer.second_name, second_surname: @customer.second_surname, staff_id: @customer.staff_id, state_id: @customer.state_id } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { account_id: @customer.account_id, address_id: @customer.address_id, advertising_medium: @customer.advertising_medium, arrival_card_arl: @customer.arrival_card_arl, arrival_card_ccf: @customer.arrival_card_ccf, birthdate: @customer.birthdate, civil_status: @customer.civil_status, company_id: @customer.company_id, current_work: @customer.current_work, date_admission: @customer.date_admission, email_id: @customer.email_id, entity_id: @customer.entity_id, first_name: @customer.first_name, gender: @customer.gender, gestation_weeks: @customer.gestation_weeks, ibc: @customer.ibc, identification_id: @customer.identification_id, lastname: @customer.lastname, pregnancy: @customer.pregnancy, second_name: @customer.second_name, second_surname: @customer.second_surname, staff_id: @customer.staff_id, state_id: @customer.state_id } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
