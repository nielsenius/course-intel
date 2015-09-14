class ChangeCollegeClassToCourseId < ActiveRecord::Migration
  def change
  	rename_column(:posts,:college_class_id,:course_number)
  end
end
