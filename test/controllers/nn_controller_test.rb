require 'test_helper'

class NnControllerTest < ActionDispatch::IntegrationTest
  test "should get result" do
    get nn_result_url
    assert_response :success
  end

end
