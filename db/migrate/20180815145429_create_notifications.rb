class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.text :notification_contenu

      t.timestamps
    end
  end
end
