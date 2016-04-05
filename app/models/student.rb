class Student < ActiveRecord::Base

	validates_presence_of :register_number
  validates_presence_of :name
  validates_presence_of :status

  has_one :classroom, :foreign_key => "student_id"

  enum status: {registered: 0, active: 1, inactive: 2, locked: 3 }

end
