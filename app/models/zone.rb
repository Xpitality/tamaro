# == Schema Information
#
# Table name: zones
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Zone < ApplicationRecord

  SEASONS = {"BASSA STAGIONE" => "low", "MEDIA STAGIONE" => "middle", "ESTATE" => "high"}

  has_many :pitches
  has_many :zone_translations, dependent: :destroy

end
