class ChangeDocumentYearType < ActiveRecord::Migration[5.1]
  def change
  	change_column(:documents, :document_year, :string)
  end
end
