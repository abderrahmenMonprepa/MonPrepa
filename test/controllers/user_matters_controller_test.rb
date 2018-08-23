require 'test_helper'

class UserMattersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_matter = user_matters(:one)
  end

  test "should get index" do
    get user_matters_url
    assert_response :success
  end

  test "should get new" do
    get new_user_matter_url
    assert_response :success
  end

  test "should create user_matter" do
    assert_difference('UserMatter.count') do
      post user_matters_url, params: { user_matter: { level: @user_matter.level, matter: @user_matter.matter, section: @user_matter.section } }
    end

    assert_redirected_to user_matter_url(UserMatter.last)
  end

  test "should show user_matter" do
    get user_matter_url(@user_matter)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_matter_url(@user_matter)
    assert_response :success
  end

  test "should update user_matter" do
    patch user_matter_url(@user_matter), params: { user_matter: { level: @user_matter.level, matter: @user_matter.matter, section: @user_matter.section } }
    assert_redirected_to user_matter_url(@user_matter)
  end

  test "should destroy user_matter" do
    assert_difference('UserMatter.count', -1) do
      delete user_matter_url(@user_matter)
    end

    assert_redirected_to user_matters_url
  end
end
