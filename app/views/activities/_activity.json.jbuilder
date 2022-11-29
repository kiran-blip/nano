json.extract! activity, :id, :name, :description, :tag, :price, :image, :start, :end, :location, :free, :venue, :booking, :review_id, :user_id, :created_at, :updated_at
json.url activity_url(activity, format: :json)
