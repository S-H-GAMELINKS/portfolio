json.extract! recruitment, :id, :title, :content, :user_id, :created_at, :updated_at
json.url recruitment_url(recruitment, format: :json)
json.image_url recruitment.image_url