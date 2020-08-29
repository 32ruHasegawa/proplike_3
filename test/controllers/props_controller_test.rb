require 'test_helper'

class PropsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get props_index_url
    assert_response :success
  end

  test "should get show" do
    get props_show_url
    assert_response :success
  end

  test "should get new" do
    get props_new_url
    assert_response :success
  end

  test "should get edit" do
    get props_edit_url
    assert_response :success
  end

end
