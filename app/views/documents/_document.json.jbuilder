json.extract! document, :id, :document_key, :document_section, :document_level, :document_course, :document_type, :document_subject, :document_year, :document_data, :created_at, :updated_at
json.url document_url(document, format: :json)
