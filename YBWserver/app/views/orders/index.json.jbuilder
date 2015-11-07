json.array!(@orders) do |order|
  json.extract! order, :id, :user_id, :problem_id, :importance_id, :comment_id, :platform_id, :status
  json.url order_url(order, format: :json)
end
