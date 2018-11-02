class CreateAdministrators < ActiveRecord::Migration[5.2]
  def change
    create_table :administrators do |t|
      t.string :cellphone
      t.references :user, foreign_key: true
      t.references :location, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
