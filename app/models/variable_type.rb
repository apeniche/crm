class VariableType
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :number, type: Integer
  field :name, type: String
  field :description, type: String
end
