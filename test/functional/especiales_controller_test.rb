require 'test_helper'

class EspecialesControllerTest < ActionController::TestCase
  setup do
    @especial = especiales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:especiales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create especial" do
    assert_difference('Especial.count') do
      post :create, especial: { descripcion: @especial.descripcion }
    end

    assert_redirected_to especial_path(assigns(:especial))
  end

  test "should show especial" do
    get :show, id: @especial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @especial
    assert_response :success
  end

  test "should update especial" do
    put :update, id: @especial, especial: { descripcion: @especial.descripcion }
    assert_redirected_to especial_path(assigns(:especial))
  end

  test "should destroy especial" do
    assert_difference('Especial.count', -1) do
      delete :destroy, id: @especial
    end

    assert_redirected_to especiales_path
  end
end
