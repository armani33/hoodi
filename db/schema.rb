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

ActiveRecord::Schema.define(version: 2018_11_27_183733) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "picture"
    t.date "date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_type"
    t.integer "start_age"
    t.integer "end_age"
    t.string "photo"
    t.string "location"
    t.float "perimeter"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "favourites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "information_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["information_id"], name: "index_favourites_on_information_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "favours", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "picture"
    t.boolean "helped"
    t.boolean "solved"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "favour_type"
    t.string "photo"
    t.float "perimeter"
    t.index ["user_id"], name: "index_favours_on_user_id"
  end

  create_table "information", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "picture"
    t.boolean "solved"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.float "perimeter"
    t.index ["user_id"], name: "index_information_on_user_id"
  end

  create_table "responses", force: :cascade do |t|
    t.text "content"
    t.string "distance"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "postable_type"
    t.bigint "postable_id"
    t.index ["postable_type", "postable_id"], name: "index_responses_on_postable_type_and_postable_id"
    t.index ["user_id"], name: "index_responses_on_user_id"
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
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.float "latitude"
    t.float "longitude"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "events", "users"
  add_foreign_key "favourites", "information"
  add_foreign_key "favourites", "users"
  add_foreign_key "favours", "users"
  add_foreign_key "information", "users"
  add_foreign_key "responses", "users"
end
