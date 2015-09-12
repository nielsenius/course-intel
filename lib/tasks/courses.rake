require 'json'

namespace :courses do
  
  desc 'Gets course data from Scotty Labs API'
  task update: :environment do
    semesters = ['F', 'M1', 'M2', 'S']
    make_api_calls(semesters)
    course_data = read_course_json(semesters)
    write_to_db(course_data)
  end
  
  def make_api_calls(semesters)
    script = 'lib/course-api/scripts/parse_schedules.py'
    semesters.each do |semester|
      outfile = "lib/course-api/#{semester}.json"
      `python3 #{script} #{semester} #{outfile}`
    end
  end
  
  def read_course_json(semesters)
    courses_array = []
    
    semesters.each do |semester|
      file = File.read("lib/course-api/#{semester}.json")
      courses_hash = JSON.parse(file)
    
      courses_hash.each do |department|
        dep_name = department['department']
    
        department['courses'].each do |course|
          num = course['num']
          title = course['title']
          units = course['units']
          courses_array << [num, title, dep_name, units]
        end
      end
    end
    
    courses_array
  end
  
  def write_to_db(courses)
    courses.each do |course|
      if CollegeClass.where(number: course[0]).empty?
        CollegeClass.create(number: course[0],
                            name: course[1],
                            department: course[2],
                            units: course[3])
      end
    end
  end
  
end
