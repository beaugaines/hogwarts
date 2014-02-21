class CreateStudentsTable < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.references :house

      t.timestamps
    end
    add_index :students, :house_id
  end
end
