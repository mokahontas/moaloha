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

ActiveRecord::Schema.define(version: 20160715012032) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "impressions", force: :cascade do |t|
    t.string   "ip_address"
    t.integer  "missing_person_id"
    t.string   "url"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.float    "longitude"
    t.float    "latitude"
  end

  create_table "missing_people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "sex"
    t.text     "location"
    t.string   "island"
    t.string   "height"
    t.string   "weight"
    t.text     "image"
    t.string   "eye_color"
    t.text     "information"
    t.string   "middle_name"
    t.string   "nickname"
    t.datetime "date"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "ethnicity"
    t.integer  "age"
    t.text     "circumstances"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "link"
    t.string   "hair_color"
    t.integer  "namus_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
