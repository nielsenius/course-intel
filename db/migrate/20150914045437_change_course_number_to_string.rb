class ChangeCourseNumberToString < ActiveRecord::Migration
  def change
  	change_column(:posts,:course_number,:string)
  end
end
