require 'test_helper'

class BeneficiairesControllerTest < ActionController::TestCase
  setup do
    @beneficiaire = beneficiaires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beneficiaires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beneficiaire" do
    assert_difference('Beneficiaire.count') do
      post :create, beneficiaire: { adresse: @beneficiaire.adresse, code_pos: @beneficiaire.code_pos, date_naiss: @beneficiaire.date_naiss, dept_naiss: @beneficiaire.dept_naiss, fixe: @beneficiaire.fixe, nom: @beneficiaire.nom, portable: @beneficiaire.portable, prenom: @beneficiaire.prenom, ville: @beneficiaire.ville }
    end

    assert_redirected_to beneficiaire_path(assigns(:beneficiaire))
  end

  test "should show beneficiaire" do
    get :show, id: @beneficiaire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beneficiaire
    assert_response :success
  end

  test "should update beneficiaire" do
    put :update, id: @beneficiaire, beneficiaire: { adresse: @beneficiaire.adresse, code_pos: @beneficiaire.code_pos, date_naiss: @beneficiaire.date_naiss, dept_naiss: @beneficiaire.dept_naiss, fixe: @beneficiaire.fixe, nom: @beneficiaire.nom, portable: @beneficiaire.portable, prenom: @beneficiaire.prenom, ville: @beneficiaire.ville }
    assert_redirected_to beneficiaire_path(assigns(:beneficiaire))
  end

  test "should destroy beneficiaire" do
    assert_difference('Beneficiaire.count', -1) do
      delete :destroy, id: @beneficiaire
    end

    assert_redirected_to beneficiaires_path
  end
end
