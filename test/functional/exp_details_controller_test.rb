require 'test_helper'

class ExpDetailsControllerTest < ActionController::TestCase
  setup do
    @exp_detail = exp_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exp_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exp_detail" do
    assert_difference('ExpDetail.count') do
      post :create, exp_detail: { detail: @exp_detail.detail, detail_order: @exp_detail.detail_order, experience_id: @exp_detail.experience_id }
    end

    assert_redirected_to exp_detail_path(assigns(:exp_detail))
  end

  test "should show exp_detail" do
    get :show, id: @exp_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exp_detail
    assert_response :success
  end

  test "should update exp_detail" do
    put :update, id: @exp_detail, exp_detail: { detail: @exp_detail.detail, detail_order: @exp_detail.detail_order, experience_id: @exp_detail.experience_id }
    assert_redirected_to exp_detail_path(assigns(:exp_detail))
  end

  test "should destroy exp_detail" do
    assert_difference('ExpDetail.count', -1) do
      delete :destroy, id: @exp_detail
    end

    assert_redirected_to exp_details_path
  end
end
