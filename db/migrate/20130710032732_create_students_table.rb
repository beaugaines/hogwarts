class CreateStudentsTable < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.references :house, index: true

      t.timestamps
    end
  end
end
