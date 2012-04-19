require 'test_helper'

class SkillSetsControllerTest < ActionController::TestCase
  setup do
    @skill_set = skill_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skill_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skill_set" do
    assert_difference('SkillSet.count') do
      post :create, skill_set: { list_order: @skill_set.list_order, skill_name: @skill_set.skill_name, user_id: @skill_set.user_id }
    end

    assert_redirected_to skill_set_path(assigns(:skill_set))
  end

  test "should show skill_set" do
    get :show, id: @skill_set
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skill_set
    assert_response :success
  end

  test "should update skill_set" do
    put :update, id: @skill_set, skill_set: { list_order: @skill_set.list_order, skill_name: @skill_set.skill_name, user_id: @skill_set.user_id }
    assert_redirected_to skill_set_path(assigns(:skill_set))
  end

  test "should destroy skill_set" do
    assert_difference('SkillSet.count', -1) do
      delete :destroy, id: @skill_set
    end

    assert_redirected_to skill_sets_path
  end
end
