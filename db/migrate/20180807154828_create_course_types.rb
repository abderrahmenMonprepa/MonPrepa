class CreateCourseTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :course_types do |t|
      t.string :course_type

      t.timestamps
    end
  end
end
