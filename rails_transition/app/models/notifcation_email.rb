class NotifcationEmail < ApplicationRecord       
    has_and_belongs_to_many :app_configurations
end
