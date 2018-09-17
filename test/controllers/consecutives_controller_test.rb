require 'test_helper'

class ConsecutivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consecutive = consecutives(:one)
  end

  test "should get index" do
    get consecutives_url
    assert_response :success
  end

  test "should get new" do
    get new_consecutive_url
    assert_response :success
  end

  test "should create consecutive" do
    assert_difference('Consecutive.count') do
      post consecutives_url, params: { consecutive: { company_id: @consecutive.company_id, customer_id: @consecutive.customer_id, folio_company: @consecutive.folio_company, suffix: @consecutive.suffix } }
    end

    assert_redirected_to consecutive_url(Consecutive.last)
  end

  test "should show consecutive" do
    get consecutive_url(@consecutive)
    assert_response :success
  end

  test "should get edit" do
    get edit_consecutive_url(@consecutive)
    assert_response :success
  end

  test "should update consecutive" do
    patch consecutive_url(@consecutive), params: { consecutive: { company_id: @consecutive.company_id, customer_id: @consecutive.customer_id, folio_company: @consecutive.folio_company, suffix: @consecutive.suffix } }
    assert_redirected_to consecutive_url(@consecutive)
  end

  test "should destroy consecutive" do
    assert_difference('Consecutive.count', -1) do
      delete consecutive_url(@consecutive)
    end

    assert_redirected_to consecutives_url
  end
end
