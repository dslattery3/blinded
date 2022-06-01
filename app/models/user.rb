class User < ApplicationRecord

    has_many :userblinds, dependent: :destroy
    has_many :blinds, through: :userblinds
    has_many :ratings, dependent: :destroy

    has_secure_password

    validates :username, uniqueness: true, confirmation: {case_sensitive: false}
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, uniqueness: true, confirmation: {case_sensitive: false}

end
