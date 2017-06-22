class CreateMonitorResults < ActiveRecord::Migration[5.0]
  def change
    create_table :monitor_results do |t|
      t.integer :http_response_code
      t.text :http_reponse_body
      t.boolean :active

      t.timestamps
    end
  end
end
