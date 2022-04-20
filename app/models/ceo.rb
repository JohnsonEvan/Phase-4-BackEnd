class Ceo < ApplicationRecord
    has_many :supervisors
    has_many :managers, through: :supervisors
end
