class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :roll_no
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
