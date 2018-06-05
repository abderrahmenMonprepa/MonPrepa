class AddAttachmentPdfFileEnoncePdfFileCorrigeToDocuments < ActiveRecord::Migration[5.1]
  def self.up
    change_table :documents do |t|
      t.attachment :pdf_file_enonce
      t.attachment :pdf_file_corrige
    end
  end

  def self.down
    remove_attachment :documents, :pdf_file_enonce
    remove_attachment :documents, :pdf_file_corrige
  end
end
