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

ActiveRecord::Schema.define(version: 20150127150315) do

  create_table 'compositions', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table "content_item_proxies", force: :cascade do |t|
    t.integer  "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "content_item_proxies", ["section_id"], name: "index_content_item_proxies_on_section_id"

  create_table "content_items", force: :cascade do |t|
    t.integer  "composition_id"
    t.integer  "content_item_proxy_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "data_values", force: :cascade do |t|
    t.string   "txt_value"
    t.decimal  "amount_value", precision: 9, scale: 6
    t.integer  "element_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "data_values", ["element_id"], name: "index_data_values_on_element_id"

  create_table "item_proxies", force: :cascade do |t|
    t.integer  "cluster_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "item_proxies", ["cluster_id"], name: "index_item_proxies_on_cluster_id"

  create_table "items", force: :cascade do |t|
    t.integer  "entry_id"
    t.integer  "item_proxy_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "items", ["entry_id"], name: "index_items_on_entry_id"
  add_index "items", ["item_proxy_id"], name: "index_items_on_item_proxy_id"

  create_table "parties", force: :cascade do |t|
    t.string   "archetypeid"
    t.string   "path"
    t.string   "name"
    t.string   "uid"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
