class CreateZoneTranslations < ActiveRecord::Migration[6.0]
  def change
    create_table :zone_translations do |t|
      t.belongs_to :zone, foreign_key: true, index: true
      t.string :locale
      t.string :name
      t.text :description
      t.text :price
      t.text :price_table

      t.timestamps
    end
  end
end
