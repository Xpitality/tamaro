# == Schema Information
#
# Table name: pitches
#
#  id                  :bigint           not null, primary key
#  camper              :boolean          default(FALSE)
#  caravan_and_car     :boolean          default(FALSE)
#  electricity         :boolean          default(FALSE)
#  freshwater          :boolean          default(FALSE)
#  internet            :boolean          default(FALSE)
#  lake_distance       :integer          default(30)
#  length              :float(24)        default(1.0)
#  max_persons         :integer          default(3)
#  pitch_number        :integer
#  playground_distance :integer          default(30)
#  sanitary_distance   :integer          default(30)
#  sewage              :boolean          default(FALSE)
#  small_tent          :boolean          default(FALSE)
#  small_tent_and_car  :boolean          default(FALSE)
#  tent_and_car        :boolean          default(FALSE)
#  tv                  :boolean          default(FALSE)
#  vehicle             :boolean          default(FALSE)
#  width               :float(24)        default(1.0)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  zone_id             :bigint
#
# Indexes
#
#  index_pitches_on_zone_id  (zone_id)
#
# Foreign Keys
#
#  fk_rails_...  (zone_id => zones.id)
#

require 'test_helper'

class PitchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
