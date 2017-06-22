class CreateNotifcationEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :notifcation_emails do |t|
      t.string :email
      t.boolean :active

      t.timestamps
    end
  end
end
