class EmployeesManagerSerializer < ActiveModel::Serializer
  attributes :id, :name, :salary, :date_of_birth, :manager_id
  has_one :manager

end