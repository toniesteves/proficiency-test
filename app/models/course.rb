class Course < ActiveRecord::Base
	
	validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :status

  has_one :classroom, :foreign_key => "course_id"


  enum status: {registered: 0, avaliable: 1, unavaliable: 2, locked: 3 }

end
