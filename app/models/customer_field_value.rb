class CustomerFieldValue
  include Mongoid::Document
  field :customer_id, type: Integer
  field :customer_field_id, type: Integer
  field :field_value, type: String
end
