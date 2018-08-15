class CreateBeFirsts < ActiveRecord::Migration[5.1]
  def change
    create_table :be_firsts do |t|
      t.string :name
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
