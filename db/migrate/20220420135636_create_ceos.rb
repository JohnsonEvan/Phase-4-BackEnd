class CreateCeos < ActiveRecord::Migration[7.0]
  def change
    create_table :ceos do |t|
      t.string :name
      t.string :company_name
      t.string :position
      t.integer :salary
      t.date :date_of_birth
    end
  end
end
