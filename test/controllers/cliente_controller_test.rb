require 'test_helper'

class ClienteControllerTest < ActionController::TestCase
  test "should get crear" do
    get :crear
    assert_response :success
  end

  test "should get buscar" do
    get :buscar
    assert_response :success
  end

  test "should get actualizar" do
    get :actualizar
    assert_response :success
  end

  test "should get eliminar" do
    get :eliminar
    assert_response :success
  end

end
