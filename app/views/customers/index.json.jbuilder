json.array!(@customers) do |customer|
  json.extract! customer, :id, :country_id
  json.url customer_url(customer, format: :json)
end
