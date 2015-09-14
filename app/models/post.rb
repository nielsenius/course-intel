class Post < ActiveRecord::Base
belongs_to :college_class,:foreign_key => 'course_number', :primary_key => 'course_number'
validate :course_id_must_exist

  def course_id_must_exist
  all_course_numbers = CollegeClass.all.map{|cur_class| cur_class.course_number}
    if(!all_course_numbers.include?(course_number))
       errors.add(:course_number, "That course number does not exist")
  	end
  end
end
