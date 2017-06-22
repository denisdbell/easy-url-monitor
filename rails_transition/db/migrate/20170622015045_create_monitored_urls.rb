class CreateMonitoredUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :monitored_urls do |t|
      t.string :url
      t.boolean :active

      t.timestamps
    end
  end
end
