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

ActiveRecord::Schema.define(version: 3) do

  create_table "remedies", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "remedies", ["id"], name: "index_remedies_on_id", using: :btree
  add_index "remedies", ["name"], name: "index_remedies_on_name", using: :btree

  create_table "reminders", force: true do |t|
    t.integer  "user_id"
    t.integer  "remedy_id"
    t.string   "title"
    t.date     "start_at"
    t.date     "end_at"
    t.time     "time"
    t.integer  "range_days"
    t.boolean  "forever_remedy",  default: false
    t.boolean  "dependent",       default: false
    t.string   "dependent_email"
    t.string   "dependent_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reminders", ["id"], name: "index_reminders_on_id", using: :btree
  add_index "reminders", ["title"], name: "index_reminders_on_title", using: :btree

  create_table "users", force: true do |t|
    t.integer  "reminder_id"
    t.integer  "remedy_id"
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
