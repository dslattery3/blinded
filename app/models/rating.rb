class Rating < ApplicationRecord
  belongs_to :sample
  belongs_to :user

  validates :nose, presence: true
  validates :palate, presence: true
  validates :finish, presence: true
  validates :notes, length: {maximum: 250}, allow_blank: true
end
