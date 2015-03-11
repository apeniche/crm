class MacroeconomicVariable
  include Mongoid::Document
  field :country_id, type: Integer
  field :variable_name, type: String
  field :variable_type, type: String
  field :variable_value, type: String
end
