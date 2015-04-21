class Category
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :category_name, type: String
  
  has_many :questions
  embeds_many :variables
  embeds_many :bands

  def to_param
  	category_name
  end
end
