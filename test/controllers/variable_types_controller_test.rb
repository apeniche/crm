require 'test_helper'

class VariableTypesControllerTest < ActionController::TestCase
  setup do
    @variable_type = variable_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:variable_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create variable_type" do
    assert_difference('VariableType.count') do
      post :create, variable_type: { description: @variable_type.description, name: @variable_type.name, number: @variable_type.number }
    end

    assert_redirected_to variable_type_path(assigns(:variable_type))
  end

  test "should show variable_type" do
    get :show, id: @variable_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @variable_type
    assert_response :success
  end

  test "should update variable_type" do
    patch :update, id: @variable_type, variable_type: { description: @variable_type.description, name: @variable_type.name, number: @variable_type.number }
    assert_redirected_to variable_type_path(assigns(:variable_type))
  end

  test "should destroy variable_type" do
    assert_difference('VariableType.count', -1) do
      delete :destroy, id: @variable_type
    end

    assert_redirected_to variable_types_path
  end
end
