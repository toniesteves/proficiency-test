class Student < ActiveRecord::Base

	validates_presence_of :register_number
  validates_presence_of :name
  validates_presence_of :status

   enum status: {registered: 0, active: 1, inactive: 2, locked: 3 }

  def self.i18n_status(hash = {})
	  status.keys.each { |key| hash[I18n.t("enumerations.student_status.#{key}")] = key }
	  hash
	end

end
