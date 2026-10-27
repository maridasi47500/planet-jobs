require "test_helper"

class ResumeassetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resumeasset = resumeassets(:one)
  end

  test "should get index" do
    get resumeassets_url
    assert_response :success
  end

  test "should get new" do
    get new_resumeasset_url
    assert_response :success
  end

  test "should create resumeasset" do
    assert_difference("Resumeasset.count") do
      post resumeassets_url, params: { resumeasset: { details: @resumeasset.details, level: @resumeasset.level, name: @resumeasset.name, resume_id: @resumeasset.resume_id } }
    end

    assert_redirected_to resumeasset_url(Resumeasset.last)
  end

  test "should show resumeasset" do
    get resumeasset_url(@resumeasset)
    assert_response :success
  end

  test "should get edit" do
    get edit_resumeasset_url(@resumeasset)
    assert_response :success
  end

  test "should update resumeasset" do
    patch resumeasset_url(@resumeasset), params: { resumeasset: { details: @resumeasset.details, level: @resumeasset.level, name: @resumeasset.name, resume_id: @resumeasset.resume_id } }
    assert_redirected_to resumeasset_url(@resumeasset)
  end

  test "should destroy resumeasset" do
    assert_difference("Resumeasset.count", -1) do
      delete resumeasset_url(@resumeasset)
    end

    assert_redirected_to resumeassets_url
  end
end
