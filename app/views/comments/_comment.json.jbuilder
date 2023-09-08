json.extract! comment, :id, :comment_user, :comment_title, :comment_message, :created_at, :updated_at
json.url comment_url(comment, format: :json)
