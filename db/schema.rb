# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160915014022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string  "street_address"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
    t.integer "family_id"
    t.integer "venue_id"
  end

  create_table "care_requests", force: :cascade do |t|
    t.integer "family_id"
    t.integer "requested_hours"
    t.time    "time"
    t.boolean "is_time_flexible"
    t.integer "flex_hours"
  end

  create_table "children", force: :cascade do |t|
    t.integer "family_id"
    t.string  "first_name"
    t.string  "last_name"
    t.date    "birthday"
    t.boolean "potty_trained"
    t.string  "potty_training_notes"
    t.boolean "allergies"
    t.string  "allergy_notes"
  end

  create_table "credits", force: :cascade do |t|
    t.integer "family_id"
  end

  create_table "families", force: :cascade do |t|
    t.string  "name"
    t.string  "phone_number"
    t.string  "email"
    t.integer "preferred_contact_method"
  end

  create_table "parents", force: :cascade do |t|
    t.integer "family_id"
    t.string  "first_name"
    t.string  "last_name"
    t.string  "email"
    t.string  "phone"
    t.integer "address_id"
  end

  create_table "playdate_families", force: :cascade do |t|
    t.integer "playdate_id"
    t.integer "family_id"
  end

  create_table "playdates", force: :cascade do |t|
    t.date    "date"
    t.time    "time"
    t.integer "playgroup_id"
    t.integer "venue_id"
  end

  create_table "playgroup_families", force: :cascade do |t|
    t.integer "playgroup_id"
    t.integer "family_id"
  end

  create_table "playgroups", force: :cascade do |t|
    t.string  "name"
    t.boolean "is_recurring"
    t.date    "recurring_date"
  end

  create_table "venues", force: :cascade do |t|
    t.string  "name"
    t.integer "family_id"
    t.integer "address_id"
  end

end
