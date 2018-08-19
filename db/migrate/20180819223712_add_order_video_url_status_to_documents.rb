class AddOrderVideoUrlStatusToDocuments < ActiveRecord::Migration[5.1]
  def change
    add_column :documents, :document_order, :integer
    add_column :documents, :document_status, :string
    add_column :documents, :document_video_url, :string
  end
end
