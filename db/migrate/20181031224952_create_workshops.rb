class CreateWorkshops < ActiveRecord::Migration[5.2]
  def change
    create_table :workshops do |t|
      t.string :name
      t.integer :number
      t.integer :score
      t.date :deadline
      t.references :subject, foreign_key: true
      t.references :question, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
