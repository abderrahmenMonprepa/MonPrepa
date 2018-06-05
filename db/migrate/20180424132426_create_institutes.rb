class CreateInstitutes < ActiveRecord::Migration[5.1]
  def change
    create_table :institutes do |t|
      t.string :institute_name
      t.string :institute_type
      t.string :institute_other

      t.timestamps
    end
  end
end
