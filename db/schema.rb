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

ActiveRecord::Schema.define(version: 2018_11_19_205158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "area"
    t.text "content"
    t.string "picture"
    t.date "date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "favours", force: :cascade do |t|
    t.string "title"
    t.string "area"
    t.text "content"
    t.string "picture"
    t.boolean "helped"
    t.boolean "solved"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_favours_on_user_id"
  end

  create_table "information", force: :cascade do |t|
    t.string "title"
    t.text "areacontent"
    t.string "picture"
    t.boolean "saved"
    t.boolean "solved"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_information_on_user_id"
  end

  create_table "reponses", force: :cascade do |t|
    t.text "content"
    t.string "distance"
    t.bigint "user_id"
    t.bigint "favour_id"
    t.bigint "event_id"
    t.bigint "information_id"
    t.string "post_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_reponses_on_event_id"
    t.index ["favour_id"], name: "index_reponses_on_favour_id"
    t.index ["information_id"], name: "index_reponses_on_information_id"
    t.index ["user_id"], name: "index_reponses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "address"
    t.string "avatar"
    t.string "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "users"
  add_foreign_key "favours", "users"
  add_foreign_key "information", "users"
  add_foreign_key "reponses", "events"
  add_foreign_key "reponses", "favours"
  add_foreign_key "reponses", "information"
  add_foreign_key "reponses", "users"
end
