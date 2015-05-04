class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.date :date_of_birth
      t.string :address
      t.text :notes
      t.references :employee, index: true

      t.timestamps null: false
    end
    add_foreign_key :profiles, :employees
  end
end
