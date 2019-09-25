json.zones do
  @zones.each do |zone|
    json.set! zone.id do
      json.id zone.id
      json.name zone.name
      zone.zone_translations.each do |zone_translation|
        json.set! zone_translation.locale.to_sym do
          json.locale zone_translation.locale
          json.name zone_translation.name
          json.name zone_translation.name
          json.description zone_translation.description
          json.price zone_translation.price
          json.price_table zone_translation.price_table
        end
      end
    end
  end
end

json.pitches @pitches, :zone_id, :pitch_number, :camper, :caravan_and_car, :electricity, :freshwater, :internet, :lake_distance, :length, :max_persons, :playground_distance, :sanitary_distance, :sewage, :small_tent, :small_tent_and_car, :tent_and_car, :tv, :vehicle, :width