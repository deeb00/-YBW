json.array!(@platforms) do |platform|
  json.extract! platform, :id, :value
  json.url platform_url(platform, format: :json)
end
