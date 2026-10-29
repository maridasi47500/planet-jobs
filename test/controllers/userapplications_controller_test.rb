require "test_helper"

class UserapplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userapplication = userapplications(:one)
  end

  test "should get index" do
    get userapplications_url
    assert_response :success
  end

  test "should get new" do
    get new_userapplication_url
    assert_response :success
  end

  test "should create userapplication" do
    assert_difference("Userapplication.count") do
      post userapplications_url, params: { userapplication: { joboffer_id: @userapplication.joboffer_id, letter: @userapplication.letter, resume_id: @userapplication.resume_id, user_id: @userapplication.user_id } }
    end

    assert_redirected_to userapplication_url(Userapplication.last)
  end

  test "should show userapplication" do
    get userapplication_url(@userapplication)
    assert_response :success
  end

  test "should get edit" do
    get edit_userapplication_url(@userapplication)
    assert_response :success
  end

  test "should update userapplication" do
    patch userapplication_url(@userapplication), params: { userapplication: { joboffer_id: @userapplication.joboffer_id, letter: @userapplication.letter, resume_id: @userapplication.resume_id, user_id: @userapplication.user_id } }
    assert_redirected_to userapplication_url(@userapplication)
  end

  test "should destroy userapplication" do
    assert_difference("Userapplication.count", -1) do
      delete userapplication_url(@userapplication)
    end

    assert_redirected_to userapplications_url
  end
end
