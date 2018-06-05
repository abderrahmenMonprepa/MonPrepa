json.extract! message, :id, :message_image, :message_text, :message_title, :administrator_id, :created_at, :updated_at
json.url message_url(message, format: :json)
