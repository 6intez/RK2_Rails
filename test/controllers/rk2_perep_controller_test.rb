require "test_helper"

class Rk2PerepControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rk2_perep_index_url
    assert_response :success
  end

  test "should get view" do
    get rk2_perep_view_url
    assert_response :success
  end
end
