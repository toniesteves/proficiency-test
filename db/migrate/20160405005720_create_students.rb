class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, :default => ''
      t.string :register_number, :default => ''
      t.boolean :status, :default => false

      t.timestamps
    end
    add_index :students, :register_number, :name => 'register_number_id_ix'
  end
end
