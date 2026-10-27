require "test_helper"

class VilleMobilitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ville_mobilite = ville_mobilites(:one)
  end

  test "should get index" do
    get ville_mobilites_url
    assert_response :success
  end

  test "should get new" do
    get new_ville_mobilite_url
    assert_response :success
  end

  test "should create ville_mobilite" do
    assert_difference("VilleMobilite.count") do
      post ville_mobilites_url, params: { ville_mobilite: { name: @ville_mobilite.name, resume_id: @ville_mobilite.resume_id } }
    end

    assert_redirected_to ville_mobilite_url(VilleMobilite.last)
  end

  test "should show ville_mobilite" do
    get ville_mobilite_url(@ville_mobilite)
    assert_response :success
  end

  test "should get edit" do
    get edit_ville_mobilite_url(@ville_mobilite)
    assert_response :success
  end

  test "should update ville_mobilite" do
    patch ville_mobilite_url(@ville_mobilite), params: { ville_mobilite: { name: @ville_mobilite.name, resume_id: @ville_mobilite.resume_id } }
    assert_redirected_to ville_mobilite_url(@ville_mobilite)
  end

  test "should destroy ville_mobilite" do
    assert_difference("VilleMobilite.count", -1) do
      delete ville_mobilite_url(@ville_mobilite)
    end

    assert_redirected_to ville_mobilites_url
  end
end
