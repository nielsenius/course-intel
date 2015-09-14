class CollegeClass < ActiveRecord::Base
	has_many :posts,:foreign_key => 'course_number', :primary_key => 'course_number'
end
