class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.integer :number
      t.string :address
      t.string :phone
      t.integer :rol
      t.references :location, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
