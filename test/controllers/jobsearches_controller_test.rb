require "test_helper"

class JobsearchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobsearch = jobsearches(:one)
  end

  test "should get index" do
    get jobsearches_url
    assert_response :success
  end

  test "should get new" do
    get new_jobsearch_url
    assert_response :success
  end

  test "should create jobsearch" do
    assert_difference("Jobsearch.count") do
      post jobsearches_url, params: { jobsearch: { what: @jobsearch.what, where: @jobsearch.where } }
    end

    assert_redirected_to jobsearch_url(Jobsearch.last)
  end

  test "should show jobsearch" do
    get jobsearch_url(@jobsearch)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobsearch_url(@jobsearch)
    assert_response :success
  end

  test "should update jobsearch" do
    patch jobsearch_url(@jobsearch), params: { jobsearch: { what: @jobsearch.what, where: @jobsearch.where } }
    assert_redirected_to jobsearch_url(@jobsearch)
  end

  test "should destroy jobsearch" do
    assert_difference("Jobsearch.count", -1) do
      delete jobsearch_url(@jobsearch)
    end

    assert_redirected_to jobsearches_url
  end
end
