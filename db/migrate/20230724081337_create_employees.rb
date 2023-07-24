class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :department
      t.integer :salary
      t.string :phone_number

      t.timestamps
    end
  end
end
