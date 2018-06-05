class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :message_image
      t.text :message_text
      t.string :message_title
      t.references :administrator, foreign_key: true

      t.timestamps
    end
  end
end
