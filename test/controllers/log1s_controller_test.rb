require 'test_helper'

class Log1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @log1 = log1s(:one)
  end

  test "should get index" do
    get log1s_url
    assert_response :success
  end

  test "should get new" do
    get new_log1_url
    assert_response :success
  end

  test "should create log1" do
    assert_difference('Log1.count') do
      post log1s_url, params: { log1: { data: @log1.data, data_trans: @log1.data_trans, user_hash: @log1.user_hash } }
    end

    assert_redirected_to log1_url(Log1.last)
  end

  test "should show log1" do
    get log1_url(@log1)
    assert_response :success
  end

  test "should get edit" do
    get edit_log1_url(@log1)
    assert_response :success
  end

  test "should update log1" do
    patch log1_url(@log1), params: { log1: { data: @log1.data, data_trans: @log1.data_trans, user_hash: @log1.user_hash } }
    assert_redirected_to log1_url(@log1)
  end

  test "should destroy log1" do
    assert_difference('Log1.count', -1) do
      delete log1_url(@log1)
    end

    assert_redirected_to log1s_url
  end
end
