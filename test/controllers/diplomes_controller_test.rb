require "test_helper"

class DiplomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diplome = diplomes(:one)
  end

  test "should get index" do
    get diplomes_url
    assert_response :success
  end

  test "should get new" do
    get new_diplome_url
    assert_response :success
  end

  test "should create diplome" do
    assert_difference("Diplome.count") do
      post diplomes_url, params: { diplome: { datedebut: @diplome.datedebut, datefin: @diplome.datefin, details: @diplome.details, lieu: @diplome.lieu, nom_diplome: @diplome.nom_diplome, nom_ecole: @diplome.nom_ecole, resume_id: @diplome.resume_id, until_today: @diplome.until_today } }
    end

    assert_redirected_to diplome_url(Diplome.last)
  end

  test "should show diplome" do
    get diplome_url(@diplome)
    assert_response :success
  end

  test "should get edit" do
    get edit_diplome_url(@diplome)
    assert_response :success
  end

  test "should update diplome" do
    patch diplome_url(@diplome), params: { diplome: { datedebut: @diplome.datedebut, datefin: @diplome.datefin, details: @diplome.details, lieu: @diplome.lieu, nom_diplome: @diplome.nom_diplome, nom_ecole: @diplome.nom_ecole, resume_id: @diplome.resume_id, until_today: @diplome.until_today } }
    assert_redirected_to diplome_url(@diplome)
  end

  test "should destroy diplome" do
    assert_difference("Diplome.count", -1) do
      delete diplome_url(@diplome)
    end

    assert_redirected_to diplomes_url
  end
end
