class CreateMarketPrices < ActiveRecord::Migration[5.1]
  def change
    create_table :market_prices do |t|
      t.string :observation
      t.string :gender
      t.float :current_price
      t.float :thirty_days_price
      t.string :age_group

      t.timestamps
    end
  end
end
