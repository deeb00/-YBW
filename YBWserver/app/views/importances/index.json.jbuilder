json.array!(@importances) do |importance|
  json.extract! importance, :id, :value
  json.url importance_url(importance, format: :json)
end
