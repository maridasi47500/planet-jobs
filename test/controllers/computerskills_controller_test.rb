require "test_helper"

class ComputerskillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @computerskill = computerskills(:one)
  end

  test "should get index" do
    get computerskills_url
    assert_response :success
  end

  test "should get new" do
    get new_computerskill_url
    assert_response :success
  end

  test "should create computerskill" do
    assert_difference("Computerskill.count") do
      post computerskills_url, params: { computerskill: { details: @computerskill.details, level: @computerskill.level, name: @computerskill.name, resume_id: @computerskill.resume_id } }
    end

    assert_redirected_to computerskill_url(Computerskill.last)
  end

  test "should show computerskill" do
    get computerskill_url(@computerskill)
    assert_response :success
  end

  test "should get edit" do
    get edit_computerskill_url(@computerskill)
    assert_response :success
  end

  test "should update computerskill" do
    patch computerskill_url(@computerskill), params: { computerskill: { details: @computerskill.details, level: @computerskill.level, name: @computerskill.name, resume_id: @computerskill.resume_id } }
    assert_redirected_to computerskill_url(@computerskill)
  end

  test "should destroy computerskill" do
    assert_difference("Computerskill.count", -1) do
      delete computerskill_url(@computerskill)
    end

    assert_redirected_to computerskills_url
  end
end
