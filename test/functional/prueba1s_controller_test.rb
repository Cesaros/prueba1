require 'test_helper'

class Prueba1sControllerTest < ActionController::TestCase
  setup do
    @prueba1 = prueba1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prueba1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prueba1" do
    assert_difference('Prueba1.count') do
      post :create, prueba1: @prueba1.attributes
    end

    assert_redirected_to prueba1_path(assigns(:prueba1))
  end

  test "should show prueba1" do
    get :show, id: @prueba1.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prueba1.to_param
    assert_response :success
  end

  test "should update prueba1" do
    put :update, id: @prueba1.to_param, prueba1: @prueba1.attributes
    assert_redirected_to prueba1_path(assigns(:prueba1))
  end

  test "should destroy prueba1" do
    assert_difference('Prueba1.count', -1) do
      delete :destroy, id: @prueba1.to_param
    end

    assert_redirected_to prueba1s_path
  end
end
