json.array!(@comments) do |comment|
  json.extract! comment, :id, :username, :email, :body, :like_number, :post_id
  json.url comment_url(comment, format: :json)
end
