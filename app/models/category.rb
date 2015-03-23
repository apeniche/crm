class Category
  include Mongoid::Document
  field :category_name, type: String
  embeds_many :questions
  embeds_many :variables
end
