class Customer
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :country_id, type: Integer
  field :country_name, type: String
  field :name, type: String
  field :identification_number, type: String
  field :identification_type, type: String
  field :firstname, type: String
  field :lastname, type: String

  embeds_many :answers
end
