class UserblindSerializer < ActiveModel::Serializer
  attributes :id, :admin
  has_one :user
  has_one :blind
end
