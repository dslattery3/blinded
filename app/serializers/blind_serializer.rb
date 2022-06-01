class BlindSerializer < ActiveModel::Serializer
  attributes :id, :name, :password_digest, :reveal_date
end
