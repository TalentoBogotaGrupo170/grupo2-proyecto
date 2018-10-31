class CreateAdministrators < ActiveRecord::Migration[5.2]
  def change
    create_table :administrators do |t|
      t.string :cellphone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
