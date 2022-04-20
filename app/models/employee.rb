class Employee < ApplicationRecord
    belongs_to :manager
    belongs_to :supervisor
    belongs_to :ceo
end
