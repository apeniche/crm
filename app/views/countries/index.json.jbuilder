json.array!(@countries) do |country|
  json.extract! country, :id, :name, :countrynumber
  json.url country_url(country, format: :json)
end
