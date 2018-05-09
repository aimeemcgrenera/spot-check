# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180417162854) do

  create_table "spots", force: :cascade do |t|
    t.integer "address_number"
    t.integer "street_direction"
    t.string "street_name"
    t.string "street_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zones", force: :cascade do |t|
    t.integer "row_id"
    t.string "status"
    t.integer "zone"
    t.string "odd_even"
    t.integer "address_range_low"
    t.integer "address_range_high"
    t.string "street_direction"
    t.string "street_name"
    t.string "street_type"
    t.string "second_street_direction"
    t.string "buffer"
    t.integer "ward_low"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
