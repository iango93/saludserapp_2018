require 'test_helper'

class NumberAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @number_account = number_accounts(:one)
  end

  test "should get index" do
    get number_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_number_account_url
    assert_response :success
  end

  test "should create number_account" do
    assert_difference('NumberAccount.count') do
      post number_accounts_url, params: { number_account: { bank: @number_account.bank, identification_id: @number_account.identification_id, owner_account: @number_account.owner_account, type_account: @number_account.type_account } }
    end

    assert_redirected_to number_account_url(NumberAccount.last)
  end

  test "should show number_account" do
    get number_account_url(@number_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_number_account_url(@number_account)
    assert_response :success
  end

  test "should update number_account" do
    patch number_account_url(@number_account), params: { number_account: { bank: @number_account.bank, identification_id: @number_account.identification_id, owner_account: @number_account.owner_account, type_account: @number_account.type_account } }
    assert_redirected_to number_account_url(@number_account)
  end

  test "should destroy number_account" do
    assert_difference('NumberAccount.count', -1) do
      delete number_account_url(@number_account)
    end

    assert_redirected_to number_accounts_url
  end
end
