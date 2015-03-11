class Question
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :body, type: String
  field :category, type: String
  field :interval, type: String
  field :default_answer, type: String
  field :customer_field_id, type:Integer
  field :question, type: String
end
