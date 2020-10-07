# == Schema Information
#
# Table name: zone_translations
#
#  id          :bigint           not null, primary key
#  description :text(65535)
#  locale      :string(255)
#  name        :string(255)
#  price       :text(65535)
#  price_table :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  zone_id     :bigint
#
# Indexes
#
#  index_zone_translations_on_zone_id  (zone_id)
#
# Foreign Keys
#
#  fk_rails_...  (zone_id => zones.id)
#

class ZoneTranslation < ApplicationRecord
  belongs_to :zone

  LOCALES = [:it, :en, :de, :fr, :nl]
end
