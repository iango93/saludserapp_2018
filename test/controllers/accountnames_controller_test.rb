require 'test_helper'

class AccountnamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accountname = accountnames(:one)
  end

  test "should get index" do
    get accountnames_url
    assert_response :success
  end

  test "should get new" do
    get new_accountname_url
    assert_response :success
  end

  test "should create accountname" do
    assert_difference('Accountname.count') do
      post accountnames_url, params: { accountname: { address_id: @accountname.address_id, email_id: @accountname.email_id, identification_id: @accountname.identification_id, type_account: @accountname.type_account } }
    end

    assert_redirected_to accountname_url(Accountname.last)
  end

  test "should show accountname" do
    get accountname_url(@accountname)
    assert_response :success
  end

  test "should get edit" do
    get edit_accountname_url(@accountname)
    assert_response :success
  end

  test "should update accountname" do
    patch accountname_url(@accountname), params: { accountname: { address_id: @accountname.address_id, email_id: @accountname.email_id, identification_id: @accountname.identification_id, type_account: @accountname.type_account } }
    assert_redirected_to accountname_url(@accountname)
  end

  test "should destroy accountname" do
    assert_difference('Accountname.count', -1) do
      delete accountname_url(@accountname)
    end

    assert_redirected_to accountnames_url
  end
end
