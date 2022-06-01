class Whiskey < ApplicationRecord
    has_many :samples
    has_many :ratings, through: :samples, dependent: :destroy

    validates :name, presence: true, uniqueness: true, confirmation: {case_sensitive: false}
    validates :proof, presence: true
    validates :distiller, presence: true

end
