class AppConfiguration < ApplicationRecord
    has_and_belongs_to_many :notification_emails
    has_and_belongs_to_many :monitored_urls
end
