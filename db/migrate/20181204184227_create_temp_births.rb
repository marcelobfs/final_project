class CreateTempBirths < ActiveRecord::Migration[5.1]
  def change
    create_table :temp_births do |t|
      t.integer :earring_id
      t.string :gender
      t.integer :mother_earring_id
      t.string :race
      t.date :birthdate

      t.timestamps
    end
  end
end
