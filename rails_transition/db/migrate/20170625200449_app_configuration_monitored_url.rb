class AppConfigurationMonitoredUrl < ActiveRecord::Migration[5.0]
  def change
      create_table :app_configurations_monitored_urls, id: false do |t|
      t.belongs_to :app_configuration, index: false
      t.belongs_to :monitored_url, index: false
    end
  end
end
