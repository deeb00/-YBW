json.array!(@users) do |user|
  json.extract! user, :id, :name, :phone, :rating_id
  json.url user_url(user, format: :json)
end
