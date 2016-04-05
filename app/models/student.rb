class Student < ActiveRecord::Base

	validates_presence_of :register_number
  validates_presence_of :name
  validates_presence_of :status

end
