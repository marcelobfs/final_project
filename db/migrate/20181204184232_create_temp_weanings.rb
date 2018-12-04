class CreateTempWeanings < ActiveRecord::Migration[5.1]
  def change
    create_table :temp_weanings do |t|
      t.integer :earring_id
      t.float :first_weight
      t.float :estimated_price_per_kilo

      t.timestamps
    end
  end
end
