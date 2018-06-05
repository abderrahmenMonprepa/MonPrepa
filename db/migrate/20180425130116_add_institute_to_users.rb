class AddInstituteToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :institute, foreign_key: true
  end
end
