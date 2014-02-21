class CreateHousesTable < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name, null: false
      t.references :student

      t.timestamps
    end
    add_index :houses, :student_id
  end
end
