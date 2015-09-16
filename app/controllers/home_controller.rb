class HomeController < ApplicationController
  def index
  	@post = Post.new
  end

  def submit_search
  course_number = params[:course_number]
  @searched_class = CollegeClass.find_by course_number: course_number
  @post = Post.new
  end
end
