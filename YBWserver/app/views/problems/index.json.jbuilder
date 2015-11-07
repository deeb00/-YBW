json.array!(@problems) do |problem|
  json.extract! problem, :id, :value
  json.url problem_url(problem, format: :json)
end
