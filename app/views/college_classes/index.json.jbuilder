json.array!(@college_classes) do |college_class|
  json.extract! college_class, :id, :name, :department, :course_number, :units
  json.url college_class_url(college_class, format: :json)
end
