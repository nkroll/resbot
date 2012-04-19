require 'test_helper'

class EduDetailsControllerTest < ActionController::TestCase
  setup do
    @edu_detail = edu_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:edu_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create edu_detail" do
    assert_difference('EduDetail.count') do
      post :create, edu_detail: { detail: @edu_detail.detail, detail_order: @edu_detail.detail_order, education_id: @edu_detail.education_id }
    end

    assert_redirected_to edu_detail_path(assigns(:edu_detail))
  end

  test "should show edu_detail" do
    get :show, id: @edu_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @edu_detail
    assert_response :success
  end

  test "should update edu_detail" do
    put :update, id: @edu_detail, edu_detail: { detail: @edu_detail.detail, detail_order: @edu_detail.detail_order, education_id: @edu_detail.education_id }
    assert_redirected_to edu_detail_path(assigns(:edu_detail))
  end

  test "should destroy edu_detail" do
    assert_difference('EduDetail.count', -1) do
      delete :destroy, id: @edu_detail
    end

    assert_redirected_to edu_details_path
  end
end
