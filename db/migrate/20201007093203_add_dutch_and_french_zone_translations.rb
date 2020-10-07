class AddDutchAndFrenchZoneTranslations < ActiveRecord::Migration[6.0]
  def change
    ZoneTranslation.where(locale: 'de').each do |zt|
      ZoneTranslation.create(locale: 'fr', name: zt.name, price: zt.price, price_table: zt.price_table, zone_id: zt.zone_id)
      ZoneTranslation.create(locale: 'nl', name: zt.name, price: zt.price, price_table: zt.price_table, zone_id: zt.zone_id)
    end
  end
end
