class MakeCourseNumberNameClear < ActiveRecord::Migration
  def change
  	rename_column(:college_classes,:number,:course_number)
  end
end
