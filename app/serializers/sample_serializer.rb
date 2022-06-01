class SampleSerializer < ActiveModel::Serializer
  attributes :id, :identifier
  has_one :blind
  has_one :whiskey
end
