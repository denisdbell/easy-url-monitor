json.extract! app_configuration, :id, :monitor_delay_In_seconds, :smtp_server, :smtp_port, :ssl_required, :username, :created_at, :updated_at
json.url app_configuration_url(app_configuration, format: :json)
