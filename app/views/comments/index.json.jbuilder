json.array!(@comments) do |comment|
  json.extract! comment, :article_id, :name, :email, :body
  json.url comment_url(comment, format: :json)
end
