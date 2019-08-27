# == Schema Information
#
# Table name: season_prices
#
#  id         :bigint           not null, primary key
#  price1     :float(24)
#  price2     :float(24)
#  price3     :float(24)
#  price4     :float(24)
#  price5     :float(24)
#  season     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  zone_id    :bigint
#
# Indexes
#
#  index_season_prices_on_zone_id  (zone_id)
#
# Foreign Keys
#
#  fk_rails_...  (zone_id => zones.id)
#

class SeasonPrice < ApplicationRecord
  belongs_to :zone
end
