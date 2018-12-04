class CreateWeightings < ActiveRecord::Migration[5.1]
  def change
    create_table :weightings do |t|
      t.string :earring_id
      t.float :weight
      t.integer :cattle_id
      t.string :lot

      t.timestamps
    end
  end
end
