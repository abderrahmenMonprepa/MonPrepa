class AddSlugToDocuments < ActiveRecord::Migration[5.1]
  def change
  	add_column :documents, :slug, :string, null: false
    add_index :documents, :slug, unique: true
  end
end
 