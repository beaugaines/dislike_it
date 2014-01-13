json.array!(@dislikes) do |dislike|
  json.extract! dislike, :id, :name, :body, :category, :degree, :user_id
  json.url dislike_url(dislike, format: :json)
end
