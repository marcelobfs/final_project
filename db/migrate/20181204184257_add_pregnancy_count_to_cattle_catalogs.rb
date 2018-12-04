class AddPregnancyCountToCattleCatalogs < ActiveRecord::Migration[5.1]
  def change
    add_column :cattle_catalogs, :pregnancies_count, :integer
  end
end
