class CreateVideoHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :video_histories do |t|
      t.references :user, foreign_key: true
      t.references :video, foreign_key: true

      t.timestamps
    end
  end
end
