json.extract! monitored_url, :id, :url, :active, :created_at, :updated_at
json.url monitored_url_url(monitored_url, format: :json)
