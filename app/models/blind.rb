class Blind < ApplicationRecord
    has_many :userblinds, dependent: :destroy
    has_many :samples, dependent: :destroy
    has_many :whiskeys, through: :samples
    has_many :users, through: :userblinds

    has_secure_password

    validates :name, uniqueness: true, presence: true, confirmation: {case_sensitive: false}
    validate :reveal_date_not_in_past

    private 

    def reveal_date_not_in_past
        if(Date.today.after?(self.reveal_date.to_date))
            errors.add(:reveal_date, "can't be in the past")
        end
    end

end
