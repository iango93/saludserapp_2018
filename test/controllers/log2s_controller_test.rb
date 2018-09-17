require 'test_helper'

class Log2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @log2 = log2s(:one)
  end

  test "should get index" do
    get log2s_url
    assert_response :success
  end

  test "should get new" do
    get new_log2_url
    assert_response :success
  end

  test "should create log2" do
    assert_difference('Log2.count') do
      post log2s_url, params: { log2: { data: @log2.data, data_trans: @log2.data_trans, user_hash: @log2.user_hash } }
    end

    assert_redirected_to log2_url(Log2.last)
  end

  test "should show log2" do
    get log2_url(@log2)
    assert_response :success
  end

  test "should get edit" do
    get edit_log2_url(@log2)
    assert_response :success
  end

  test "should update log2" do
    patch log2_url(@log2), params: { log2: { data: @log2.data, data_trans: @log2.data_trans, user_hash: @log2.user_hash } }
    assert_redirected_to log2_url(@log2)
  end

  test "should destroy log2" do
    assert_difference('Log2.count', -1) do
      delete log2_url(@log2)
    end

    assert_redirected_to log2s_url
  end
end
