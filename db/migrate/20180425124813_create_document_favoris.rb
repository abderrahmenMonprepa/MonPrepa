class CreateDocumentFavoris < ActiveRecord::Migration[5.1]
  def change
    create_table :document_favoris do |t|
      t.references :user, foreign_key: true
      t.references :document, foreign_key: true

      t.timestamps
    end
  end
end
