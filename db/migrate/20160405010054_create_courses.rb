class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, :default => ''
      t.text :description, :default => ''
      t.boolean :status, :default => false

      t.timestamps
    end
  end
end
