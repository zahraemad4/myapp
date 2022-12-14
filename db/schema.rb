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

ActiveRecord::Schema[7.0].define(version: 2022_11_14_100435) do
  create_table "books", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.integer "user_id"
    t.string "carname"
    t.string "carcolor"
    t.integer "carnumber"
    t.string "carprivate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clints", force: :cascade do |t|
    t.string "clint_id", null: false
    t.string "full_name", null: false
    t.string "birth_date"
    t.string "gender"
    t.string "clint_email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clint_email"], name: "index_clints_on_clint_email"
    t.index ["full_name"], name: "index_clints_on_full_name"
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "user_id"
    t.string "jobtitle"
    t.integer "workhours"
    t.string "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.integer "phones_id"
    t.string "model"
    t.string "serial", null: false
    t.string "color"
    t.string "phonenumber", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["model"], name: "index_phones_on_model"
    t.index ["phonenumber"], name: "index_phones_on_phonenumber"
    t.index ["phones_id"], name: "index_phones_on_phones_id"
    t.index ["serial"], name: "index_phones_on_serial"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "identifier", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "phones", "phones", column: "phones_id"
end
