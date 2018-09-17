require 'test_helper'

class SettledsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @settled = settleds(:one)
  end

  test "should get index" do
    get settleds_url
    assert_response :success
  end

  test "should get new" do
    get new_settled_url
    assert_response :success
  end

  test "should create settled" do
    assert_difference('Settled.count') do
      post settleds_url, params: { settled: { afp: @settled.afp, arl: @settled.arl, bank_certification: @settled.bank_certification, ccf: @settled.ccf, ccm: @settled.ccm, company_id: @settled.company_id, customer_id: @settled.customer_id, eps: @settled.eps, headquarter_id: @settled.headquarter_id, identification_id: @settled.identification_id, online_contributioin_number: @settled.online_contributioin_number, online_contribution: @settled.online_contribution, personal_document: @settled.personal_document, rut: @settled.rut } }
    end

    assert_redirected_to settled_url(Settled.last)
  end

  test "should show settled" do
    get settled_url(@settled)
    assert_response :success
  end

  test "should get edit" do
    get edit_settled_url(@settled)
    assert_response :success
  end

  test "should update settled" do
    patch settled_url(@settled), params: { settled: { afp: @settled.afp, arl: @settled.arl, bank_certification: @settled.bank_certification, ccf: @settled.ccf, ccm: @settled.ccm, company_id: @settled.company_id, customer_id: @settled.customer_id, eps: @settled.eps, headquarter_id: @settled.headquarter_id, identification_id: @settled.identification_id, online_contributioin_number: @settled.online_contributioin_number, online_contribution: @settled.online_contribution, personal_document: @settled.personal_document, rut: @settled.rut } }
    assert_redirected_to settled_url(@settled)
  end

  test "should destroy settled" do
    assert_difference('Settled.count', -1) do
      delete settled_url(@settled)
    end

    assert_redirected_to settleds_url
  end
end
