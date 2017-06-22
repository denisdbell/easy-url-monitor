json.extract! monitor_result, :id, :http_response_code, :http_reponse_body, :active, :created_at, :updated_at
json.url monitor_result_url(monitor_result, format: :json)
