class CreatePregnancies < ActiveRecord::Migration[5.1]
  def change
    create_table :pregnancies do |t|
      t.string :earring_id
      t.string :bull_name
      t.integer :born
      t.integer :cattle_id

      t.timestamps
    end
  end
end
