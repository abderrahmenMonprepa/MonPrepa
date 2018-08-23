json.extract! user_matter, :id, :section, :level, :matter, :created_at, :updated_at
json.url user_matter_url(user_matter, format: :json)
