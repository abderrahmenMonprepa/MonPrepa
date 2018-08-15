require 'test_helper'

class BeFirstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @be_first = be_firsts(:one)
  end

  test "should get index" do
    get be_firsts_url
    assert_response :success
  end

  test "should get new" do
    get new_be_first_url
    assert_response :success
  end

  test "should create be_first" do
    assert_difference('BeFirst.count') do
      post be_firsts_url, params: { be_first: { email: @be_first.email, name: @be_first.name, phone_number: @be_first.phone_number } }
    end

    assert_redirected_to be_first_url(BeFirst.last)
  end

  test "should show be_first" do
    get be_first_url(@be_first)
    assert_response :success
  end

  test "should get edit" do
    get edit_be_first_url(@be_first)
    assert_response :success
  end

  test "should update be_first" do
    patch be_first_url(@be_first), params: { be_first: { email: @be_first.email, name: @be_first.name, phone_number: @be_first.phone_number } }
    assert_redirected_to be_first_url(@be_first)
  end

  test "should destroy be_first" do
    assert_difference('BeFirst.count', -1) do
      delete be_first_url(@be_first)
    end

    assert_redirected_to be_firsts_url
  end
end
