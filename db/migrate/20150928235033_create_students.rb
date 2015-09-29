class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :f_name, null: false
      t.string :l_name, null: false
      t.boolean :currently_enrolled, null: false
      t.belongs_to :school, index: true, foreign_key: true
      t.belongs_to :course, index: true, foreign_key: true
      t.belongs_to :teacher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
