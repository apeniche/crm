require 'test_helper'

class MacroeconomicVariablesControllerTest < ActionController::TestCase
  setup do
    @macroeconomic_variable = macroeconomic_variables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:macroeconomic_variables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create macroeconomic_variable" do
    assert_difference('MacroeconomicVariable.count') do
      post :create, macroeconomic_variable: { country_id: @macroeconomic_variable.country_id, variable_name: @macroeconomic_variable.variable_name, variable_type: @macroeconomic_variable.variable_type, variable_value: @macroeconomic_variable.variable_value }
    end

    assert_redirected_to macroeconomic_variable_path(assigns(:macroeconomic_variable))
  end

  test "should show macroeconomic_variable" do
    get :show, id: @macroeconomic_variable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @macroeconomic_variable
    assert_response :success
  end

  test "should update macroeconomic_variable" do
    patch :update, id: @macroeconomic_variable, macroeconomic_variable: { country_id: @macroeconomic_variable.country_id, variable_name: @macroeconomic_variable.variable_name, variable_type: @macroeconomic_variable.variable_type, variable_value: @macroeconomic_variable.variable_value }
    assert_redirected_to macroeconomic_variable_path(assigns(:macroeconomic_variable))
  end

  test "should destroy macroeconomic_variable" do
    assert_difference('MacroeconomicVariable.count', -1) do
      delete :destroy, id: @macroeconomic_variable
    end

    assert_redirected_to macroeconomic_variables_path
  end
end
