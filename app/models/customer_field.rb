class CustomerField
  include Mongoid::Document
  field :field_name, type: String
  field :field_type, type: String
  field :validity_period, type: Integer
  field :customer_field_id, type: Integer
end
