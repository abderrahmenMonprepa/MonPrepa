class AddUserSessionToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :unique_session_id, :integer
  end
end
