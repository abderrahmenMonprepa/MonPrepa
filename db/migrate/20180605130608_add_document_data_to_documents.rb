class AddDocumentDataToDocuments < ActiveRecord::Migration[5.1]
  def change
    add_column :documents, :file_data, :bytea
  end
end
