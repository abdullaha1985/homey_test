json.extract! comment, :id, :body, :author, :project_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
