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

ActiveRecord::Schema.define(version: 2018_07_12_231117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aggression_details", force: :cascade do |t|
    t.date "aggression_date"
    t.time "aggression_time"
    t.text "aggression_mechanism"
    t.text "aggression_scene"
    t.text "aggression_file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attention_centers", force: :cascade do |t|
    t.text "code"
    t.text "name"
    t.float "latitude"
    t.float "longitude"
    t.text "phone_number"
    t.text "picture"
    t.text "schedule"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "institution_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.text "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perpetrators", force: :cascade do |t|
    t.integer "age"
    t.text "gender"
    t.text "relationship"
    t.boolean "live_together"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_of_aggressions", force: :cascade do |t|
    t.text "non_sexual_violence"
    t.text "sexual_violence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
