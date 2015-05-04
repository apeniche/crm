json.array!(@variable_types) do |variable_type|
  json.extract! variable_type, :id, :number, :name, :description
  json.url variable_type_url(variable_type, format: :json)
end
