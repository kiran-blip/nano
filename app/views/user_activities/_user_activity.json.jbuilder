json.extract! user_activity, :id, :user_id, :activity_id, :created_at, :updated_at
json.url user_activity_url(user_activity, format: :json)
