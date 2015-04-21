class Band
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :category
  has_many :band_members

  field :name, type: String
  field :country, type: String


end
