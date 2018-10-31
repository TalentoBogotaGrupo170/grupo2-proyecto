class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :school
      t.references :administrator, foreign_key: true
      t.references :user, foreign_key: true
      t.references :grade

      t.timestamps
    end
  end
end
