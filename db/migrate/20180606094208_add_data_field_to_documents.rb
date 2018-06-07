class AddDataFieldToDocuments < ActiveRecord::Migration[5.1]
  def change
    add_column :documents, :enonce_data, :bytea
    add_column :documents, :corrige_data, :bytea
  end
end
