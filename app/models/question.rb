class Question
  include Mongoid::Document
  field :body, type: String
  field :category, type: String
  field :interval, type: String
  field :default_answer, type: String
end
