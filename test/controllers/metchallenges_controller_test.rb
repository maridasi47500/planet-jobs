require "test_helper"

class MetchallengesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metchallenge = metchallenges(:one)
  end

  test "should get index" do
    get metchallenges_url
    assert_response :success
  end

  test "should get new" do
    get new_metchallenge_url
    assert_response :success
  end

  test "should create metchallenge" do
    assert_difference("Metchallenge.count") do
      post metchallenges_url, params: { metchallenge: { challenge_id: @metchallenge.challenge_id, details: @metchallenge.details, pic: @metchallenge.pic, user_id: @metchallenge.user_id } }
    end

    assert_redirected_to metchallenge_url(Metchallenge.last)
  end

  test "should show metchallenge" do
    get metchallenge_url(@metchallenge)
    assert_response :success
  end

  test "should get edit" do
    get edit_metchallenge_url(@metchallenge)
    assert_response :success
  end

  test "should update metchallenge" do
    patch metchallenge_url(@metchallenge), params: { metchallenge: { challenge_id: @metchallenge.challenge_id, details: @metchallenge.details, pic: @metchallenge.pic, user_id: @metchallenge.user_id } }
    assert_redirected_to metchallenge_url(@metchallenge)
  end

  test "should destroy metchallenge" do
    assert_difference("Metchallenge.count", -1) do
      delete metchallenge_url(@metchallenge)
    end

    assert_redirected_to metchallenges_url
  end
end
