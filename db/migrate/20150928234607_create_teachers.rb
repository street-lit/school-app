class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :f_name, null: false
      t.string :l_name, null: false
      t.school :belongs_to
      t.course :belongs_to

      t.timestamps null: false
    end
  end
end
