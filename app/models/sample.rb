class Sample < ApplicationRecord
  belongs_to :blind
  belongs_to :whiskey
  has_many :ratings

  validates :identifier, presence: true
end
