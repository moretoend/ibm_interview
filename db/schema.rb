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

ActiveRecord::Schema.define(version: 20160402215126) do

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "state_id"
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id"

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company_name"
    t.string   "address"
    t.string   "county"
    t.string   "zip"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "email"
    t.string   "web"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "state_id"
    t.integer  "city_id"
  end

  add_index "people", ["city_id"], name: "index_people_on_city_id"
  add_index "people", ["state_id"], name: "index_people_on_state_id"

  create_table "states", force: :cascade do |t|
    t.string   "acronym",    limit: 2
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "states", ["acronym"], name: "index_states_on_acronym", unique: true

end
