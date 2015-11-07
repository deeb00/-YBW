json.array!(@ratings) do |rating|
  json.extract! rating, :id, :value
  json.url rating_url(rating, format: :json)
end
