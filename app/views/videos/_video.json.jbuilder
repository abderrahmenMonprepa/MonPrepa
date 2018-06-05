json.extract! video, :id, :video_name, :video_key, :video_category, :video_tags, :video_section, :video_course, :video_type, :video_year, :video_data, :created_at, :updated_at
json.url video_url(video, format: :json)
