class CustomerFieldValue
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :customer_id, type: Integer
  field :customer_field_id, type: Integer
  field :field_value, type: String
end
