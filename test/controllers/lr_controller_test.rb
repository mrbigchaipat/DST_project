require 'test_helper'

class LrControllerTest < ActionDispatch::IntegrationTest
  test "should get result" do
    get lr_result_url
    assert_response :success
  end

end
