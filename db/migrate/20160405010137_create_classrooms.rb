class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.date :entry_at, :default => Time.now
      t.references :student, index: true
      t.references :course, index: true

      t.timestamps
    end
    add_index :classrooms, :student_id, :name => 'student_id_id_ix'
    add_index :classrooms, :course_id, :name => 'course_id_id_ix'
  end
end
