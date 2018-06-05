json.extract! comment, :id, :comment_text, :comment_title, :user_id, :document_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
