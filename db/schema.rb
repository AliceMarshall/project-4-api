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

ActiveRecord::Schema.define(version: 20170421142858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "body"
    t.integer  "item_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_comments_on_item_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "friendships", force: :cascade do |t|
    t.string   "friendable_type"
    t.integer  "friendable_id"
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "blocker_id"
    t.integer  "status"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.text     "instructions"
    t.string   "image"
    t.integer  "category_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.boolean  "available"
    t.string   "friend_level"
    t.index ["category_id"], name: "index_items_on_category_id", using: :btree
    t.index ["user_id"], name: "index_items_on_user_id", using: :btree
  end

  create_table "requests", force: :cascade do |t|
    t.string   "status"
    t.integer  "item_id"
    t.integer  "owner_id"
    t.integer  "borrower_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["item_id"], name: "index_requests_on_item_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "full_name"
    t.string   "email"
    t.integer  "telephone"
    t.string   "image"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.integer  "github_id"
  end

  add_foreign_key "comments", "items"
  add_foreign_key "comments", "users"
  add_foreign_key "items", "categories"
  add_foreign_key "items", "users"
  add_foreign_key "requests", "items"
end
