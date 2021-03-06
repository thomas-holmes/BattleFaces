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

ActiveRecord::Schema.define(version: 20131201192357) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_keys", force: true do |t|
    t.integer  "master_face_id"
    t.string   "access_token"
    t.string   "scope"
    t.datetime "expired_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "api_keys", ["access_token"], name: "index_api_keys_on_access_token", unique: true, using: :btree
  add_index "api_keys", ["master_face_id"], name: "index_api_keys_on_master_face_id", using: :btree

  create_table "battle_faces", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "master_face_id"
    t.integer  "attack"
    t.integer  "defense"
    t.integer  "speed"
    t.string   "status"
    t.integer  "level"
  end

  add_index "battle_faces", ["master_face_id"], name: "index_battle_faces_on_master_face_id", using: :btree
  add_index "battle_faces", ["status"], name: "index_battle_faces_on_status", using: :btree

  create_table "master_faces", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
