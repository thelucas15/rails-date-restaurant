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

ActiveRecord::Schema.define(version: 20170524151141) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "evaluations", force: :cascade do |t|
    t.boolean "decision"
    t.bigint "match_list_id"
    t.bigint "restaurant_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_list_id"], name: "index_evaluations_on_match_list_id"
    t.index ["restaurant_id"], name: "index_evaluations_on_restaurant_id"
    t.index ["user_id"], name: "index_evaluations_on_user_id"
  end

  create_table "match_lists", force: :cascade do |t|
    t.time "start_time"
    t.bigint "restaurant_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date"
    t.index ["restaurant_id"], name: "index_match_lists_on_restaurant_id"
    t.index ["user_id"], name: "index_match_lists_on_user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "evaluation_id"
    t.bigint "match_list_id"
    t.bigint "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluation_id"], name: "index_reservations_on_evaluation_id"
    t.index ["match_list_id"], name: "index_reservations_on_match_list_id"
    t.index ["restaurant_id"], name: "index_reservations_on_restaurant_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "food_type"
    t.string "address"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.string "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "age"
    t.integer "age_pref_start"
    t.integer "age_pref_end"
    t.string "gender"
    t.string "gender_pref"
    t.text "description"
    t.string "hash_tag_pref"
    t.string "provider"
    t.string "uid"
    t.string "facebook_picture_url"
    t.string "first_name"
    t.string "last_name"
    t.string "token"
    t.datetime "token_expiry"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "evaluations", "match_lists"
  add_foreign_key "evaluations", "restaurants"
  add_foreign_key "evaluations", "users"
  add_foreign_key "match_lists", "restaurants"
  add_foreign_key "match_lists", "users"
  add_foreign_key "reservations", "evaluations"
  add_foreign_key "reservations", "match_lists"
  add_foreign_key "reservations", "restaurants"
  add_foreign_key "reservations", "users"
end
