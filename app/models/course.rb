class Course < ActiveRecord::Base
	validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :status

  enum status: {registered: 0, avaliable: 1, unavaliable: 2, locked: 3 }

end
