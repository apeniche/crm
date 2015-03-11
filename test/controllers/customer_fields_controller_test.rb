require 'test_helper'

class CustomerFieldsControllerTest < ActionController::TestCase
  setup do
    @customer_field = customer_fields(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_fields)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_field" do
    assert_difference('CustomerField.count') do
      post :create, customer_field: { customer_field_id: @customer_field.customer_field_id, field_name: @customer_field.field_name, field_type: @customer_field.field_type, validity_period: @customer_field.validity_period }
    end

    assert_redirected_to customer_field_path(assigns(:customer_field))
  end

  test "should show customer_field" do
    get :show, id: @customer_field
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_field
    assert_response :success
  end

  test "should update customer_field" do
    patch :update, id: @customer_field, customer_field: { customer_field_id: @customer_field.customer_field_id, field_name: @customer_field.field_name, field_type: @customer_field.field_type, validity_period: @customer_field.validity_period }
    assert_redirected_to customer_field_path(assigns(:customer_field))
  end

  test "should destroy customer_field" do
    assert_difference('CustomerField.count', -1) do
      delete :destroy, id: @customer_field
    end

    assert_redirected_to customer_fields_path
  end
end
