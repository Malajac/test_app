require 'test_helper'

class MyBoicesControllerTest < ActionController::TestCase
  setup do
    @my_boice = my_boices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_boices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_boice" do
    assert_difference('MyBoice.count') do
      post :create, my_boice: { description: @my_boice.description, name: @my_boice.name }
    end

    assert_redirected_to my_boice_path(assigns(:my_boice))
  end

  test "should show my_boice" do
    get :show, id: @my_boice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_boice
    assert_response :success
  end

  test "should update my_boice" do
    patch :update, id: @my_boice, my_boice: { description: @my_boice.description, name: @my_boice.name }
    assert_redirected_to my_boice_path(assigns(:my_boice))
  end

  test "should destroy my_boice" do
    assert_difference('MyBoice.count', -1) do
      delete :destroy, id: @my_boice
    end

    assert_redirected_to my_boices_path
  end
end
