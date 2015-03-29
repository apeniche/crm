class Customer
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :country_id, type: Integer
  field :name, type: String
  field :identification_number, type: String
  field :identification_type, type: String
  field :firstname, type: String
  field :lastname, type: String
end
