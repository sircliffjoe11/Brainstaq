json.extract! comment, :id, :username, :body, :idea_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
