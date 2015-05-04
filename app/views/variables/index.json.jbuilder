json.array!(@variables) do |variable|
  json.extract! variable, :id, :variable_type, :type_name, :description
  json.url variable_url(variable, format: :json)
end
