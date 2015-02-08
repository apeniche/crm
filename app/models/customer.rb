class Customer
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :country_id, type: Integer
end
