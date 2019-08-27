class CreateSeasonPrices < ActiveRecord::Migration[6.0]
  def change
    create_table :season_prices do |t|
      t.belongs_to :zone, foreign_key: true, index: true
      t.string :season
      t.float :price1
      t.float :price2
      t.float :price3
      t.float :price4
      t.float :price5

      t.timestamps
    end
  end
end
