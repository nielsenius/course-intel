class HomeController < ApplicationController
  def index
  end

  def submit_search
  course_number = params[:number]
  @searched_class = CollegeClass.find_by number: course_number
  end
end
