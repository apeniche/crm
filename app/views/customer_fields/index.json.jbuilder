json.array!(@customer_fields) do |customer_field|
  json.extract! customer_field, :id, :field_name, :field_type, :validity_period, :customer_field_id
  json.url customer_field_url(customer_field, format: :json)
end
