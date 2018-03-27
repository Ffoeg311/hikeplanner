json.extract! hike, :id, :link, :description, :commute_hours, :title, :location, :nearest_town, :created_at, :updated_at
json.url hike_url(hike, format: :json)
