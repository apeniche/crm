json.array!(@customer_field_values) do |customer_field_value|
  json.extract! customer_field_value, :id, :customer_id, :customer_field_id, :field_value
  json.url customer_field_value_url(customer_field_value, format: :json)
end
