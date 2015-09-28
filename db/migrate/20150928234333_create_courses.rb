class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name, null: false
      t.string :subject, null: false
      t.school :belongs_to

      t.timestamps null: false
    end
  end
end
