class RatingSerializer < ActiveModel::Serializer
  attributes :id, :nose, :palate, :finish, :notes
  has_one :sample
  has_one :user
end
