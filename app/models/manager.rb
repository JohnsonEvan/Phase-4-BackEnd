class Manager < ApplicationRecord
    belongs_to :ceo
    belongs_to :supervisor
    has_many :employees
end
