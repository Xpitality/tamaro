class CreatePitches < ActiveRecord::Migration[6.0]
  def change
    create_table :pitches do |t|
      t.belongs_to :zone, foreign_key: true, index: true

      t.integer :pitch_number
      t.boolean :caravan_and_car, default: false
      t.boolean :camper, default: false
      t.boolean :tent_and_car, default: false
      t.boolean :small_tent, default: false
      t.boolean :small_tent_and_car, default: false
      t.boolean :vehicle, default: false
      t.float :width, default: 1.0
      t.float :length, default: 1.0
      t.boolean :electricity, default: false
      t.boolean :internet, default: false
      t.integer :max_persons, default: 3
      t.integer :lake_distance, default: 30
      t.integer :sanitary_distance, default: 30
      t.integer :playground_distance, default: 30
      t.boolean :tv, default: false
      t.boolean :sewage, default: false
      t.boolean :freshwater, default: false

      t.timestamps
    end
  end
end
