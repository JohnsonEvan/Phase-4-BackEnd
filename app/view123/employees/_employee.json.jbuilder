json.extract! employee, :id, :name, :position, :salary, :date_of_birth, :created_at, :updated_at
json.url employee_url(employee, format: :json)
