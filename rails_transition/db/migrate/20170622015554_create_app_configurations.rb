class CreateAppConfigurations < ActiveRecord::Migration[5.0]
  def change
    create_table :app_configurations do |t|
      t.integer :monitor_delay_In_seconds
      t.string :smtp_server
      t.string :smtp_port
      t.boolean :ssl_required
      t.string :username

      t.timestamps
    end
  end
end
