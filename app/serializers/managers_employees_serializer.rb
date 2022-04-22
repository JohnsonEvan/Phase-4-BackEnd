class ManagersEmployeesSerializer < ActiveModel::Serializer
  attributes :id, :name, :salary, :date_of_birth, :supervisor_id
  has_many :employees
end
