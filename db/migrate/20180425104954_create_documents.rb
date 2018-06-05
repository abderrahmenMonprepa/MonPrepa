class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.string :document_key
      t.string :document_section
      t.string :document_level
      t.string :document_course
      t.string :document_type
      t.string :document_subject
      t.integer :document_year
      t.string :document_data

      t.timestamps
    end
  end
end
