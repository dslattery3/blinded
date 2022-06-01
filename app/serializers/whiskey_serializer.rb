class WhiskeySerializer < ActiveModel::Serializer
  attributes :id, :name, :proof, :distiller, :age, :single_barrel
end
