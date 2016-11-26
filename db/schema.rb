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

ActiveRecord::Schema.define(version: 20161126220937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "category_records", force: true do |t|
    t.integer  "recipient_id"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "donations", force: true do |t|
    t.decimal  "amount"
    t.integer  "recipient_id"
    t.date     "date"
    t.string   "method"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  create_table "recipients", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "reasons_for_support"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "approval_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
  end

end
