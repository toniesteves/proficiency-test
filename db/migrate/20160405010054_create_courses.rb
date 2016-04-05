class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, :default => ''
      t.text :description, :default => ''
      t.integer :status, :default => 0

      t.timestamps
    end
  end
end
