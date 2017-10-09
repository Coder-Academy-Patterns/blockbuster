json.extract! video, :id, :title, :year_released, :description, :classification, :genre, :created_at, :updated_at
json.url video_url(video, format: :json)
