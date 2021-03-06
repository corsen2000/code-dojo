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

ActiveRecord::Schema.define(version: 20131228013750) do

  create_table "challenges", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "start"
    t.date     "end"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prizes", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "cost"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "question"
  end

  create_table "submissions", force: true do |t|
    t.integer  "user_id"
    t.integer  "challenge_id"
    t.string   "title"
    t.text     "description"
    t.string   "source"
    t.string   "demo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "submissions", ["challenge_id"], name: "index_submissions_on_challenge_id"
  add_index "submissions", ["user_id"], name: "index_submissions_on_user_id"

  create_table "transactions", force: true do |t|
    t.integer  "user_id"
    t.integer  "prize_id"
    t.integer  "cost"
    t.boolean  "delivered"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "answer"
  end

  add_index "transactions", ["prize_id"], name: "index_transactions_on_prize_id"
  add_index "transactions", ["user_id"], name: "index_transactions_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "points",                 default: 0
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
