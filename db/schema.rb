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

ActiveRecord::Schema.define(version: 20140403200406) do

  create_table "buyers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.float    "price"
    t.text     "photo1"
    t.text     "photo2"
    t.text     "photo3"
    t.boolean  "sold",            default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "seller_id"
    t.integer  "organization_id"
  end

  add_index "items", ["organization_id"], name: "index_items_on_organization_id"
  add_index "items", ["seller_id"], name: "index_items_on_seller_id"

  create_table "organizations", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sellers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", force: true do |t|
    t.boolean  "buyer_confirmation",  default: false
    t.boolean  "seller_confirmation", default: false
    t.integer  "buyer_id"
    t.integer  "seller_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "organization_id"
  end

  add_index "transactions", ["buyer_id"], name: "index_transactions_on_buyer_id"
  add_index "transactions", ["item_id"], name: "index_transactions_on_item_id"
  add_index "transactions", ["organization_id"], name: "index_transactions_on_organization_id"
  add_index "transactions", ["seller_id"], name: "index_transactions_on_seller_id"

end
