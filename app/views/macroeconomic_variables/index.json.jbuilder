json.array!(@macroeconomic_variables) do |macroeconomic_variable|
  json.extract! macroeconomic_variable, :id, :country_id, :variable_name, :variable_type, :variable_value
  json.url macroeconomic_variable_url(macroeconomic_variable, format: :json)
end
