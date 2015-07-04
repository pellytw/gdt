require 'test_helper'

class ValorPuntajesControllerTest < ActionController::TestCase
  setup do
    @valor_puntaje = valor_puntajes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:valor_puntajes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create valor_puntaje" do
    assert_difference('ValorPuntaje.count') do
      post :create, valor_puntaje: { amarilla: @valor_puntaje.amarilla, chenemigo: @valor_puntaje.chenemigo, doble_amarilla: @valor_puntaje.doble_amarilla, figura: @valor_puntaje.figura, gol: @valor_puntaje.gol, gol_penal: @valor_puntaje.gol_penal, penal_atajado: @valor_puntaje.penal_atajado, penal_errado: @valor_puntaje.penal_errado, roja_directa: @valor_puntaje.roja_directa, valla_invicta: @valor_puntaje.valla_invicta }
    end

    assert_redirected_to valor_puntaje_path(assigns(:valor_puntaje))
  end

  test "should show valor_puntaje" do
    get :show, id: @valor_puntaje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @valor_puntaje
    assert_response :success
  end

  test "should update valor_puntaje" do
    patch :update, id: @valor_puntaje, valor_puntaje: { amarilla: @valor_puntaje.amarilla, chenemigo: @valor_puntaje.chenemigo, doble_amarilla: @valor_puntaje.doble_amarilla, figura: @valor_puntaje.figura, gol: @valor_puntaje.gol, gol_penal: @valor_puntaje.gol_penal, penal_atajado: @valor_puntaje.penal_atajado, penal_errado: @valor_puntaje.penal_errado, roja_directa: @valor_puntaje.roja_directa, valla_invicta: @valor_puntaje.valla_invicta }
    assert_redirected_to valor_puntaje_path(assigns(:valor_puntaje))
  end

  test "should destroy valor_puntaje" do
    assert_difference('ValorPuntaje.count', -1) do
      delete :destroy, id: @valor_puntaje
    end

    assert_redirected_to valor_puntajes_path
  end
end
