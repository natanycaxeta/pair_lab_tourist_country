require 'test_helper'

class TouristsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tourists_index_url
    assert_response :success
  end

  test "should get new" do
    get tourists_new_url
    assert_response :success
  end

  test "should get show" do
    get tourists_show_url
    assert_response :success
  end

  test "should get edit" do
    get tourists_edit_url
    assert_response :success
  end

end
