require "test_helper"

class ClassementControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get classement_index_url
    assert_response :success
  end
end
