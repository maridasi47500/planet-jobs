require "test_helper"

class JoboffersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @joboffer = joboffers(:one)
  end

  test "should get index" do
    get joboffers_url
    assert_response :success
  end

  test "should get new" do
    get new_joboffer_url
    assert_response :success
  end

  test "should create joboffer" do
    assert_difference("Joboffer.count") do
      post joboffers_url, params: { joboffer: { company_id: @joboffer.company_id, content: @joboffer.content, place_name: @joboffer.place_name, title: @joboffer.title } }
    end

    assert_redirected_to joboffer_url(Joboffer.last)
  end

  test "should show joboffer" do
    get joboffer_url(@joboffer)
    assert_response :success
  end

  test "should get edit" do
    get edit_joboffer_url(@joboffer)
    assert_response :success
  end

  test "should update joboffer" do
    patch joboffer_url(@joboffer), params: { joboffer: { company_id: @joboffer.company_id, content: @joboffer.content, place_name: @joboffer.place_name, title: @joboffer.title } }
    assert_redirected_to joboffer_url(@joboffer)
  end

  test "should destroy joboffer" do
    assert_difference("Joboffer.count", -1) do
      delete joboffer_url(@joboffer)
    end

    assert_redirected_to joboffers_url
  end
end
