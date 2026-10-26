require "test_helper"

class UsersearchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usersearch = usersearches(:one)
  end

  test "should get index" do
    get usersearches_url
    assert_response :success
  end

  test "should get new" do
    get new_usersearch_url
    assert_response :success
  end

  test "should create usersearch" do
    assert_difference("Usersearch.count") do
      post usersearches_url, params: { usersearch: { jobsearch_id: @usersearch.jobsearch_id, user_id: @usersearch.user_id } }
    end

    assert_redirected_to usersearch_url(Usersearch.last)
  end

  test "should show usersearch" do
    get usersearch_url(@usersearch)
    assert_response :success
  end

  test "should get edit" do
    get edit_usersearch_url(@usersearch)
    assert_response :success
  end

  test "should update usersearch" do
    patch usersearch_url(@usersearch), params: { usersearch: { jobsearch_id: @usersearch.jobsearch_id, user_id: @usersearch.user_id } }
    assert_redirected_to usersearch_url(@usersearch)
  end

  test "should destroy usersearch" do
    assert_difference("Usersearch.count", -1) do
      delete usersearch_url(@usersearch)
    end

    assert_redirected_to usersearches_url
  end
end
