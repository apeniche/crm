class Variable
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :type_number, type: Integer
  field :variable_type, type: String
  field :variable_name, type: String
  field :description, type: String
  field :locked, type: Boolean

  embedded_in :category
  has_many :questions
end
