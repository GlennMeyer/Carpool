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

ActiveRecord::Schema.define(version: 20150219033106) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commutes", force: :cascade do |t|
    t.integer "user_id"
    t.string  "meetup_street"
    t.string  "meetup_city"
    t.string  "meetup_state"
    t.float   "meetup_lat"
    t.float   "meetup_lng"
    t.string  "dropoff_street"
    t.string  "dropoff_city"
    t.string  "dropoff_state"
    t.float   "dropoff_lat"
    t.float   "dropoff_lng"
    t.time    "leave_time"
    t.time    "return_time"
    t.integer "search_distance"
  end

  create_table "drivers", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "commute_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.string   "message"
    t.boolean  "read",         default: false
    t.boolean  "invite",       default: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "riders", force: :cascade do |t|
    t.integer  "user_id",                   null: false
    t.integer  "commute_id",                null: false
    t.boolean  "looking",    default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "rideshares", force: :cascade do |t|
    t.integer  "driver_id",  null: false
    t.integer  "rider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "username"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
