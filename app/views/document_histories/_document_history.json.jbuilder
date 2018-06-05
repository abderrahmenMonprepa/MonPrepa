json.extract! document_history, :id, :user_id, :document_id, :created_at, :updated_at
json.url document_history_url(document_history, format: :json)
