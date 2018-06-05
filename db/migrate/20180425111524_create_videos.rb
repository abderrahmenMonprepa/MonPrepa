class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :video_name
      t.string :video_key
      t.string :video_category
      t.string :video_tags
      t.string :video_section
      t.string :video_course
      t.string :video_type
      t.integer :video_year
      t.string :video_data

      t.timestamps
    end
  end
end
