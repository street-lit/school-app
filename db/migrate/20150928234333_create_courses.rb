class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name, null: false
      t.string :subject, null: false
      t.belongs_to :school, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
