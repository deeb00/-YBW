json.array!(@comments) do |comment|
  json.extract! comment, :id, :value
  json.url comment_url(comment, format: :json)
end
