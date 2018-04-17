require 'test_helper'

class SvmControllerTest < ActionDispatch::IntegrationTest
  test "should get result" do
    get svm_result_url
    assert_response :success
  end

end
