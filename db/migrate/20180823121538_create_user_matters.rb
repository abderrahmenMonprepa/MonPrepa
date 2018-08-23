class CreateUserMatters < ActiveRecord::Migration[5.1]
  def change
    create_table :user_matters do |t|
      t.string :section
      t.string :level
      t.string :matter

      t.timestamps
    end
  end
end
