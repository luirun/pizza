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

ActiveRecord::Schema.define(version: 20160913175720) do

  create_table "dishes", force: :cascade do |t|
    t.text     "nazwa",             limit: 65535
    t.text     "skladniki",         limit: 65535
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "icon_file_name",    limit: 255
    t.string   "icon_content_type", limit: 255
    t.integer  "icon_file_size",    limit: 4
    t.datetime "icon_updated_at"
    t.integer  "rodzaj",            limit: 4
  end

  add_index "dishes", ["rodzaj"], name: "types_dishes_idx", using: :btree

  create_table "posts", force: :cascade do |t|
    t.text     "tytul",              limit: 65535
    t.text     "krotki_opis",        limit: 65535
    t.text     "dlugi_opis",         limit: 65535
    t.text     "tagi",               limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "cover_file_name",    limit: 255
    t.string   "cover_content_type", limit: 255
    t.integer  "cover_file_size",    limit: 4
    t.datetime "cover_updated_at"
  end

  create_table "sliders", force: :cascade do |t|
    t.text     "tytul",              limit: 65535
    t.text     "krotki_opis",        limit: 65535
    t.integer  "artykul",            limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.integer  "photo_file_size",    limit: 4
    t.datetime "photo_updated_at"
  end

  create_table "types", force: :cascade do |t|
    t.string "rodzaj", limit: 100
  end

  add_foreign_key "dishes", "types", column: "rodzaj", name: "types_dishes"
end
