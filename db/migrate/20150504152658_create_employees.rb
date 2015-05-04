class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.date :date_hire
      t.string :job
      t.decimal :salary

      t.timestamps null: false
    end
  end
end
