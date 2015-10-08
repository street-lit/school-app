class CreateOfferings < ActiveRecord::Migration
  def change
    create_table :offerings do |t|
      t.belongs_to :course, index: true, foreign_key: true
      t.belongs_to :school, index: true, foreign_key: true
      t.integer :cost, null: false, default: 1000

      t.timestamps null: false
    end
  end
end
