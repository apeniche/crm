class BandMember
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :band

  field :name, type: String
  field :instrument, type: String
  field :age, type: Integer
end
