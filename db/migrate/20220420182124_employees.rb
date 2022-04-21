class Employees < ActiveRecord::Migration[7.0]
  def change 
    create_table :employees do |t|
    t.string :name
    t.string :position
    t.integer :salary
    t.string :date_of_birth
    t.references :manager
    end
  end
end
