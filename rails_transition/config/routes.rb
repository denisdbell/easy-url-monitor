Rails.application.routes.draw do
  resources :app_configurations
  resources :monitor_results
  resources :monitored_urls
  resources :notifcation_emails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
