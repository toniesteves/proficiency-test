class Classroom < ActiveRecord::Base
  belongs_to :student
  belongs_to :course

  validates_presence_of :entry_at
end
