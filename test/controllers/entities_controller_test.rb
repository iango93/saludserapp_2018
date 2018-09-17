require 'test_helper'

class EntitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entity = entities(:one)
  end

  test "should get index" do
    get entities_url
    assert_response :success
  end

  test "should get new" do
    get new_entity_url
    assert_response :success
  end

  test "should create entity" do
    assert_difference('Entity.count') do
      post entities_url, params: { entity: { category_id: @entity.category_id, code: @entity.code, company_id: @entity.company_id, level_arl: @entity.level_arl, name_afp: @entity.name_afp, name_arl: @entity.name_arl, name_ccf: @entity.name_ccf, name_eps: @entity.name_eps, percent: @entity.percent, service: @entity.service, state_id: @entity.state_id, type: @entity.type } }
    end

    assert_redirected_to entity_url(Entity.last)
  end

  test "should show entity" do
    get entity_url(@entity)
    assert_response :success
  end

  test "should get edit" do
    get edit_entity_url(@entity)
    assert_response :success
  end

  test "should update entity" do
    patch entity_url(@entity), params: { entity: { category_id: @entity.category_id, code: @entity.code, company_id: @entity.company_id, level_arl: @entity.level_arl, name_afp: @entity.name_afp, name_arl: @entity.name_arl, name_ccf: @entity.name_ccf, name_eps: @entity.name_eps, percent: @entity.percent, service: @entity.service, state_id: @entity.state_id, type: @entity.type } }
    assert_redirected_to entity_url(@entity)
  end

  test "should destroy entity" do
    assert_difference('Entity.count', -1) do
      delete entity_url(@entity)
    end

    assert_redirected_to entities_url
  end
end
