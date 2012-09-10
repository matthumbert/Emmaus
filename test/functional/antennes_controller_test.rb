require 'test_helper'

class AntennesControllerTest < ActionController::TestCase
  setup do
    @antenne = antennes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:antennes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create antenne" do
    assert_difference('Antenne.count') do
      post :create, antenne: { adresse: @antenne.adresse, code_pos: @antenne.code_pos, mail: @antenne.mail, nom: @antenne.nom, telephone: @antenne.telephone, ville: @antenne.ville }
    end

    assert_redirected_to antenne_path(assigns(:antenne))
  end

  test "should show antenne" do
    get :show, id: @antenne
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @antenne
    assert_response :success
  end

  test "should update antenne" do
    put :update, id: @antenne, antenne: { adresse: @antenne.adresse, code_pos: @antenne.code_pos, mail: @antenne.mail, nom: @antenne.nom, telephone: @antenne.telephone, ville: @antenne.ville }
    assert_redirected_to antenne_path(assigns(:antenne))
  end

  test "should destroy antenne" do
    assert_difference('Antenne.count', -1) do
      delete :destroy, id: @antenne
    end

    assert_redirected_to antennes_path
  end
end
