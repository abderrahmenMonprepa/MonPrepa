json.extract! document_image, :id, :image_data, :image_order, :document_id, :created_at, :updated_at
json.url document_image_url(document_image, format: :json)
