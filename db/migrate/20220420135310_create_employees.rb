class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :position
      t.integer :salary
      t.date :date_of_birth
      t.references :manager
    end
  end
end
