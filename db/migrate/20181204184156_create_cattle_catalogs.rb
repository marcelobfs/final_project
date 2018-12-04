class CreateCattleCatalogs < ActiveRecord::Migration[5.1]
  def change
    create_table :cattle_catalogs do |t|
      t.float :first_weight
      t.string :source
      t.string :race
      t.string :gender
      t.float :price_per_kilo
      t.string :father
      t.string :earring_id
      t.date :purchase_or_weaning_date
      t.string :mother_earring_id
      t.date :birthdate
      t.string :status

      t.timestamps
    end
  end
end
