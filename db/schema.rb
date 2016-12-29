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

ActiveRecord::Schema.define(version: 20161218030221) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sites", force: :cascade do |t|
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["url"], name: "index_sites_on_url", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.text     "h1"
    t.text     "h2"
    t.text     "h3"
    t.text     "h4"
    t.text     "h5"
    t.text     "h6"
    t.text     "link"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_tags_on_site_id", using: :btree
  end

  add_foreign_key "tags", "sites"
end
