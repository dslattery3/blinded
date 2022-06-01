# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_01_171340) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blinds", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "reveal_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.bigint "sample_id", null: false
    t.bigint "user_id", null: false
    t.integer "nose"
    t.integer "palate"
    t.integer "finish"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sample_id"], name: "index_ratings_on_sample_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "samples", force: :cascade do |t|
    t.string "identifier"
    t.bigint "blind_id", null: false
    t.bigint "whiskey_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blind_id"], name: "index_samples_on_blind_id"
    t.index ["whiskey_id"], name: "index_samples_on_whiskey_id"
  end

  create_table "userblinds", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "blind_id", null: false
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blind_id"], name: "index_userblinds_on_blind_id"
    t.index ["user_id"], name: "index_userblinds_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.string "profile_pic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

  create_table "whiskeys", force: :cascade do |t|
    t.string "name"
    t.float "proof"
    t.string "distiller"
    t.integer "age"
    t.string "whiskey_type"
    t.boolean "single_barrel", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ratings", "samples"
  add_foreign_key "ratings", "users"
  add_foreign_key "samples", "blinds"
  add_foreign_key "samples", "whiskeys"
  add_foreign_key "userblinds", "blinds"
  add_foreign_key "userblinds", "users"
end
