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

ActiveRecord::Schema.define(version: 20150914190241) do

  create_table "bids", force: true do |t|
    t.integer  "candidate_id"
    t.integer  "user_id"
    t.integer  "bid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "minimum_bid"
  end

  add_index "bids", ["candidate_id", "user_id"], name: "index_bids_on_candidate_id_and_user_id"

  create_table "candidates", force: true do |t|
    t.string   "name"
    t.string   "photo"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "commit"
  end

  add_index "candidates", ["photo"], name: "index_candidates_on_photo", unique: true

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",           default: false
    t.string   "phone"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
