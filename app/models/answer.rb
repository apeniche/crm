class Answer
  include Mongoid::Document
  include Mongoid::Timestamps

  field :value, type: String
  field :entered_by, type: Integer

  embedded_in :customer
  belongs_to :question
  has_one :variable
end
