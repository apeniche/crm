class Category
  include Mongoid::Document
  field :category_name, type: String
  
  has_many :questions
  embeds_many :variables

  def to_param
  	category_name
  end
end
