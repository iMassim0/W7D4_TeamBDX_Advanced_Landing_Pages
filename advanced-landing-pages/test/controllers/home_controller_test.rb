require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get lp1" do
    get home_lp1_url
    assert_response :success
  end

  test "should get lp2" do
    get home_lp2_url
    assert_response :success
  end

  test "should get lp3" do
    get home_lp3_url
    assert_response :success
  end

end
