class Variable
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :variable_type, type: Integer
  field :type_name, type: String
  field :description, type: String

  embedded_in :category
end
