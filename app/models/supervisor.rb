class Supervisor < ApplicationRecord
    has_many :managers
    has_many :employees, through: :manager
    belongs_to :ceo
end
