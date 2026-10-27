require "test_helper"

class SpokenlanguagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spokenlanguage = spokenlanguages(:one)
  end

  test "should get index" do
    get spokenlanguages_url
    assert_response :success
  end

  test "should get new" do
    get new_spokenlanguage_url
    assert_response :success
  end

  test "should create spokenlanguage" do
    assert_difference("Spokenlanguage.count") do
      post spokenlanguages_url, params: { spokenlanguage: { details: @spokenlanguage.details, language_id: @spokenlanguage.language_id, level: @spokenlanguage.level, resume_id: @spokenlanguage.resume_id } }
    end

    assert_redirected_to spokenlanguage_url(Spokenlanguage.last)
  end

  test "should show spokenlanguage" do
    get spokenlanguage_url(@spokenlanguage)
    assert_response :success
  end

  test "should get edit" do
    get edit_spokenlanguage_url(@spokenlanguage)
    assert_response :success
  end

  test "should update spokenlanguage" do
    patch spokenlanguage_url(@spokenlanguage), params: { spokenlanguage: { details: @spokenlanguage.details, language_id: @spokenlanguage.language_id, level: @spokenlanguage.level, resume_id: @spokenlanguage.resume_id } }
    assert_redirected_to spokenlanguage_url(@spokenlanguage)
  end

  test "should destroy spokenlanguage" do
    assert_difference("Spokenlanguage.count", -1) do
      delete spokenlanguage_url(@spokenlanguage)
    end

    assert_redirected_to spokenlanguages_url
  end
end
