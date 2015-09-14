class HomeController < ApplicationController
  def index
  end

  def submit_search
  course_number = params[:course_number]
  @searched_class = CollegeClass.find_by course_number: course_number
  end
end
