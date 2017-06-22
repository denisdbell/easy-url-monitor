json.extract! notifcation_email, :id, :email, :active, :created_at, :updated_at
json.url notifcation_email_url(notifcation_email, format: :json)
