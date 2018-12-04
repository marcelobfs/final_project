class CreateVaccinations < ActiveRecord::Migration[5.1]
  def change
    create_table :vaccinations do |t|
      t.string :earrring_id
      t.string :vaccine_type
      t.integer :cattle_id

      t.timestamps
    end
  end
end
