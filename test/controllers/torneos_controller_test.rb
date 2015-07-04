require 'test_helper'

class TorneosControllerTest < ActionController::TestCase
  setup do
    @torneo = torneos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:torneos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create torneo" do
    assert_difference('Torneo.count') do
      post :create, torneo: { nombre: @torneo.nombre }
    end

    assert_redirected_to torneo_path(assigns(:torneo))
  end

  test "should show torneo" do
    get :show, id: @torneo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @torneo
    assert_response :success
  end

  test "should update torneo" do
    patch :update, id: @torneo, torneo: { nombre: @torneo.nombre }
    assert_redirected_to torneo_path(assigns(:torneo))
  end

  test "should destroy torneo" do
    assert_difference('Torneo.count', -1) do
      delete :destroy, id: @torneo
    end

    assert_redirected_to torneos_path
  end
end
