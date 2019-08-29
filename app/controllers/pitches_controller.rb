require 'csv'

class PitchesController < AdminController

  def index
    @pitches = Pitch.all
  end

  def import
    CSV.foreach(params['file'].path, headers: true) do |row|
      pitch_hash = row.to_h
      if pitch_hash['pitch_number'].to_i > 0
        pitch = Pitch.where(pitch_number: pitch_hash['pitch_number']).first
        attributes = {
            caravan_and_car: pitch_hash["caravan_and_car"] == "1",
            camper: pitch_hash["camper"] == "1",
            tent_and_car: pitch_hash["tent_and_car"] == "1",
            small_tent: pitch_hash["small_tent"] == "1",
            small_tent_and_car: pitch_hash["small_tent_and_car"] == "1",
            vehicle: pitch_hash["vehicle"] == "1",
            width: pitch_hash["width"].to_f,
            length: pitch_hash["length"].to_f,
            electricity: pitch_hash["electricity"] == "1",
            internet: pitch_hash["internet"] == "1",
            max_persons: pitch_hash["max_persons"].to_i,
            lake_distance: pitch_hash["lake_distance"].to_i,
            sanitary_distance: pitch_hash["sanitary_distance"].to_i,
            playground_distance: pitch_hash["playground_distance"].to_i,
            tv: pitch_hash["tv"] == "1",
            sewage: pitch_hash["sewage"] == "1",
            freshwater: pitch_hash["freshwater"] == "1"
        }

        zones = {}
        if zones[pitch_hash['zone'].strip]
          zone = zones[pitch_hash['zone'].strip]
        else
          zone = Zone.where(name: pitch_hash['zone'].strip).first
          unless zone
            zone = Zone.create(name: pitch_hash['zone'].strip)
            [:it, :de, :en].each do |zone_locale|
              zone.zone_translations.create(locale: zone_locale, name: pitch_hash['zone'].strip)
            end
          end
        end

        if pitch
          pitch.update attributes.merge({pitch_number: pitch_hash['pitch_number'].to_i, zone_id: zone.id})
        else
          Pitch.create attributes.merge({pitch_number: pitch_hash['pitch_number'].to_i, zone_id: zone.id})
        end
      end
    end

    redirect_to pitches_path
  end
end
