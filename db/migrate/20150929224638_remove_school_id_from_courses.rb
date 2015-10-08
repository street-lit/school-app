class RemoveSchoolIdFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :school_id, :integer
  end
end
