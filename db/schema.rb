# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_27_110224) do

  create_table "pitches", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "zone_id"
    t.integer "pitch_number"
    t.boolean "caravan_and_car", default: false
    t.boolean "camper", default: false
    t.boolean "tent_and_car", default: false
    t.boolean "small_tent", default: false
    t.boolean "small_tent_and_car", default: false
    t.boolean "vehicle", default: false
    t.float "width", default: 1.0
    t.float "length", default: 1.0
    t.boolean "electricity", default: false
    t.boolean "internet", default: false
    t.integer "max_persons", default: 3
    t.integer "lake_distance", default: 30
    t.integer "sanitary_distance", default: 30
    t.integer "playground_distance", default: 30
    t.boolean "tv", default: false
    t.boolean "sewage", default: false
    t.boolean "freshwater", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["zone_id"], name: "index_pitches_on_zone_id"
  end

  create_table "season_prices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "zone_id"
    t.string "season"
    t.float "price1"
    t.float "price2"
    t.float "price3"
    t.float "price4"
    t.float "price5"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["zone_id"], name: "index_season_prices_on_zone_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "zones", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pitches", "zones"
  add_foreign_key "season_prices", "zones"
end
