class AppConfigurationNotificationEMail < ActiveRecord::Migration[5.0]
  def change
    create_table :app_configurations_notification_emails, id: false do |t|
      t.belongs_to :app_configuration, index: false
      t.belongs_to :notifcation_email, index: false
    end
  end
end
