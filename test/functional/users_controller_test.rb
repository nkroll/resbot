require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { city: @user.city, description: @user.description, email: @user.email, emailshow: @user.emailshow, facebook_url: @user.facebook_url, facebookshow: @user.facebookshow, headshot_url: @user.headshot_url, linkedin_url: @user.linkedin_url, linkedinshow: @user.linkedinshow, name: @user.name, phone: @user.phone, tagline: @user.tagline, twitter_url: @user.twitter_url, twittershow: @user.twittershow }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { city: @user.city, description: @user.description, email: @user.email, emailshow: @user.emailshow, facebook_url: @user.facebook_url, facebookshow: @user.facebookshow, headshot_url: @user.headshot_url, linkedin_url: @user.linkedin_url, linkedinshow: @user.linkedinshow, name: @user.name, phone: @user.phone, tagline: @user.tagline, twitter_url: @user.twitter_url, twittershow: @user.twittershow }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
