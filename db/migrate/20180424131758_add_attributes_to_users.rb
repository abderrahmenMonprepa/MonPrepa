class AddAttributesToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :phone_number, :string
    add_column :users, :cin_number, :integer , :limit => 8
    add_column :users, :school_year, :integer
    add_column :users, :city, :string
  end
end
