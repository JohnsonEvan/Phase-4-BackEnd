class SupervisorsManagersSerializer < ActiveModel::Serializer
  attributes :id, :name, :salary, :date_of_birth, :ceo_id
  has_many :managers, serializer: ManagersEmployeesSerializer
  
end
