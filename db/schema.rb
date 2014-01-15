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

ActiveRecord::Schema.define(version: 20140112004111) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dogs", force: true do |t|
    t.string   "name",                null: false
    t.string   "breed",               null: false
    t.string   "gender",              null: false
    t.string   "age",                 null: false
    t.string   "preference",          null: false
    t.string   "url"
    t.integer  "user_id",             null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "dogs", ["user_id"], name: "index_dogs_on_user_id", using: :btree

  create_table "parks", force: true do |t|
    t.string   "name",       null: false
    t.string   "borough"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parks_users", id: false, force: true do |t|
    t.integer "park_id"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",               null: false
    t.string   "password_digest",     null: false
    t.string   "zipcode",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "name"
    t.string   "tagline"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
