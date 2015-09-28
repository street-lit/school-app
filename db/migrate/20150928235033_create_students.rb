class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :f_name, null: false
      t.string :l_name, null: false
      t.boolean :currently_enrolled, null: false
      t.school :belongs_to
      t.course :belongs_to
      t.teacher :belongs_to

      t.timestamps null: false
    end
  end
end
