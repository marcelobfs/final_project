class CreateDeaths < ActiveRecord::Migration[5.1]
  def change
    create_table :deaths do |t|
      t.string :earring_id
      t.string :cause
      t.integer :cattle_id

      t.timestamps
    end
  end
end
