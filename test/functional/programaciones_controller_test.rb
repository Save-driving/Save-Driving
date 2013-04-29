require 'test_helper'

class ProgramacionesControllerTest < ActionController::TestCase
  setup do
    @programacion = programaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programacion" do
    assert_difference('Programacion.count') do
      post :create, programacion: { descripcion: @programacion.descripcion }
    end

    assert_redirected_to programacion_path(assigns(:programacion))
  end

  test "should show programacion" do
    get :show, id: @programacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @programacion
    assert_response :success
  end

  test "should update programacion" do
    put :update, id: @programacion, programacion: { descripcion: @programacion.descripcion }
    assert_redirected_to programacion_path(assigns(:programacion))
  end

  test "should destroy programacion" do
    assert_difference('Programacion.count', -1) do
      delete :destroy, id: @programacion
    end

    assert_redirected_to programaciones_path
  end
end
