json.array!(@posts) do |post|
  json.extract! post, :id, :class_id, :instructor, :comment, :semester, :year
  json.url post_url(post, format: :json)
end
