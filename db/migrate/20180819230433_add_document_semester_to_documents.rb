class AddDocumentSemesterToDocuments < ActiveRecord::Migration[5.1]
  def change
    add_column :documents, :document_semester, :integer
  end
end
