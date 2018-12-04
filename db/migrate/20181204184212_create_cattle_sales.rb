class CreateCattleSales < ActiveRecord::Migration[5.1]
  def change
    create_table :cattle_sales do |t|
      t.float :weight
      t.float :price_per_kilo
      t.string :earring_id
      t.integer :cattle_id

      t.timestamps
    end
  end
end
