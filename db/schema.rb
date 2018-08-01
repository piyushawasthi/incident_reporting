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

ActiveRecord::Schema.define(version: 20180731172722) do

  create_table "incident_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "incident_types", [nil], name: "index_incident_types_on_types"

  create_table "incidents", force: :cascade do |t|
    t.integer  "school_id"
    t.integer  "incident_type_id"
    t.integer  "user_id"
    t.text     "description"
    t.string   "people_involved"
    t.string   "observers"
    t.string   "observed_on"
    t.integer  "location_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "locations", ["place"], name: "index_locations_on_place"

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "schools", ["name"], name: "index_schools_on_name"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "contact"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
