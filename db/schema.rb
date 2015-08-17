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

ActiveRecord::Schema.define(version: 20150810115049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "approvals", force: true do |t|
    t.string   "week"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "grid11"
    t.string   "grid12"
    t.string   "grid13"
    t.string   "grid14"
    t.string   "grid15"
    t.string   "grid16"
    t.string   "grid17"
    t.string   "grid21"
    t.string   "grid22"
    t.string   "grid23"
    t.string   "grid24"
    t.string   "grid25"
    t.string   "grid26"
    t.string   "grid27"
    t.string   "grid31"
    t.string   "grid32"
    t.string   "grid33"
    t.string   "grid34"
    t.string   "grid35"
    t.string   "grid36"
    t.string   "grid37"
    t.string   "grid41"
    t.string   "grid42"
    t.string   "grid43"
    t.string   "grid44"
    t.string   "grid45"
    t.string   "grid46"
    t.string   "grid47"
    t.string   "grid51"
    t.string   "grid52"
    t.string   "grid53"
    t.string   "grid54"
    t.string   "grid55"
    t.string   "grid56"
    t.string   "grid57"
    t.string   "grid61"
    t.string   "grid62"
    t.string   "grid63"
    t.string   "grid64"
    t.string   "grid65"
    t.string   "grid66"
    t.string   "grid67"
    t.string   "grid71"
    t.string   "grid72"
    t.string   "grid73"
    t.string   "grid74"
    t.string   "grid75"
    t.string   "grid76"
    t.string   "grid77"
    t.string   "grid81"
    t.string   "grid82"
    t.string   "grid83"
    t.string   "grid84"
    t.string   "grid85"
    t.string   "grid86"
    t.string   "grid87"
    t.string   "grid91"
    t.string   "grid92"
    t.string   "grid93"
    t.string   "grid94"
    t.string   "grid95"
    t.string   "grid96"
    t.string   "grid97"
    t.string   "grid101"
    t.string   "grid102"
    t.string   "grid103"
    t.string   "grid104"
    t.string   "grid105"
    t.string   "grid106"
    t.string   "grid107"
    t.string   "grid111"
    t.string   "grid112"
    t.string   "grid113"
    t.string   "grid114"
    t.string   "grid115"
    t.string   "grid116"
    t.string   "grid117"
    t.integer  "rotumid"
  end

  create_table "rota", force: true do |t|
    t.text     "week"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "grid11"
    t.string   "grid12"
    t.string   "grid13"
    t.string   "grid14"
    t.string   "grid15"
    t.string   "grid16"
    t.string   "grid17"
    t.string   "grid21"
    t.string   "grid22"
    t.string   "grid23"
    t.string   "grid24"
    t.string   "grid25"
    t.string   "grid26"
    t.string   "grid27"
    t.string   "grid31"
    t.string   "grid32"
    t.string   "grid33"
    t.string   "grid34"
    t.string   "grid35"
    t.string   "grid36"
    t.string   "grid37"
    t.string   "grid41"
    t.string   "grid42"
    t.string   "grid43"
    t.string   "grid44"
    t.string   "grid45"
    t.string   "grid46"
    t.string   "grid47"
    t.string   "grid51"
    t.string   "grid52"
    t.string   "grid53"
    t.string   "grid54"
    t.string   "grid55"
    t.string   "grid56"
    t.string   "grid57"
    t.string   "grid61"
    t.string   "grid62"
    t.string   "grid63"
    t.string   "grid64"
    t.string   "grid65"
    t.string   "grid66"
    t.string   "grid67"
    t.string   "grid71"
    t.string   "grid72"
    t.string   "grid73"
    t.string   "grid74"
    t.string   "grid75"
    t.string   "grid76"
    t.string   "grid77"
    t.string   "grid81"
    t.string   "grid82"
    t.string   "grid83"
    t.string   "grid84"
    t.string   "grid85"
    t.string   "grid86"
    t.string   "grid87"
    t.string   "grid91"
    t.string   "grid92"
    t.string   "grid93"
    t.string   "grid94"
    t.string   "grid95"
    t.string   "grid96"
    t.string   "grid97"
    t.string   "grid101"
    t.string   "grid102"
    t.string   "grid103"
    t.string   "grid104"
    t.string   "grid105"
    t.string   "grid106"
    t.string   "grid107"
    t.string   "grid111"
    t.string   "grid112"
    t.string   "grid113"
    t.string   "grid114"
    t.string   "grid115"
    t.string   "grid116"
    t.string   "grid117"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: ""
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.boolean  "admin"
    t.string   "grid1"
    t.string   "grid2"
    t.string   "grid3"
    t.string   "grid4"
    t.string   "grid5"
    t.string   "grid6"
    t.string   "grid7"
  end

  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
