require 'test_helper'

class CustomerFieldValuesControllerTest < ActionController::TestCase
  setup do
    @customer_field_value = customer_field_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_field_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_field_value" do
    assert_difference('CustomerFieldValue.count') do
      post :create, customer_field_value: { customer_field_id: @customer_field_value.customer_field_id, customer_id: @customer_field_value.customer_id, field_value: @customer_field_value.field_value }
    end

    assert_redirected_to customer_field_value_path(assigns(:customer_field_value))
  end

  test "should show customer_field_value" do
    get :show, id: @customer_field_value
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_field_value
    assert_response :success
  end

  test "should update customer_field_value" do
    patch :update, id: @customer_field_value, customer_field_value: { customer_field_id: @customer_field_value.customer_field_id, customer_id: @customer_field_value.customer_id, field_value: @customer_field_value.field_value }
    assert_redirected_to customer_field_value_path(assigns(:customer_field_value))
  end

  test "should destroy customer_field_value" do
    assert_difference('CustomerFieldValue.count', -1) do
      delete :destroy, id: @customer_field_value
    end

    assert_redirected_to customer_field_values_path
  end
end
