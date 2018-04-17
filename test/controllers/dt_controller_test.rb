require 'test_helper'

class DtControllerTest < ActionDispatch::IntegrationTest
  test "should get result" do
    get dt_result_url
    assert_response :success
  end

end
