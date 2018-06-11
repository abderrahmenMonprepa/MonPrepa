class AddDocumentTrimToDocuments < ActiveRecord::Migration[5.1]
  def change
    add_column :documents, :document_trimestre, :string
  end
end
