class CreateDocumentImages < ActiveRecord::Migration[5.1]
  def change
    create_table :document_images do |t|
      t.string :image_data
      t.integer :image_order
      t.references :document, foreign_key: true

      t.timestamps
    end
  end
end
