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

ActiveRecord::Schema[7.2].define(version: 2024_12_01_024353) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breakes", force: :cascade do |t|
    t.bigint "machine_id", null: false
    t.integer "name"
    t.integer "color"
    t.float "thickness"
    t.float "length"
    t.float "width"
    t.float "position"
    t.float "tamite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_breakes_on_machine_id"
  end

  create_table "coruse_photos", force: :cascade do |t|
    t.string "image_url"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_coruse_photos_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.date "date", null: false
    t.string "weather"
    t.float "temperature"
    t.string "event_name", null: false
    t.string "venue", null: false
    t.string "coment"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "gimmicks", force: :cascade do |t|
    t.bigint "machine_id", null: false
    t.string "name"
    t.integer "gimmick_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_gimmicks_on_machine_id"
  end

  create_table "machine_photos", force: :cascade do |t|
    t.string "image_url"
    t.bigint "machine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_machine_photos_on_machine_id"
  end

  create_table "machines", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.string "machine_name"
    t.integer "motor"
    t.integer "gear_ratio"
    t.integer "frame", default: 0
    t.float "tire_diameter"
    t.string "tire_type"
    t.float "voltage"
    t.float "speed"
    t.text "other_comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "body"
    t.index ["event_id"], name: "index_machines_on_event_id"
  end

  create_table "mass_dampers", force: :cascade do |t|
    t.bigint "machine_id", null: false
    t.integer "name"
    t.float "weight"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_mass_dampers_on_machine_id"
  end

  create_table "race_times", force: :cascade do |t|
    t.float "rap_time"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "course_length"
    t.index ["event_id"], name: "index_race_times_on_event_id"
  end

  create_table "rollers", force: :cascade do |t|
    t.bigint "gimmick_id", null: false
    t.integer "position"
    t.float "value"
    t.string "material"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "thrust_angle"
    t.index ["gimmick_id"], name: "index_rollers_on_gimmick_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "breakes", "machines"
  add_foreign_key "coruse_photos", "events"
  add_foreign_key "events", "users"
  add_foreign_key "gimmicks", "machines"
  add_foreign_key "machine_photos", "machines"
  add_foreign_key "machines", "events"
  add_foreign_key "mass_dampers", "machines"
  add_foreign_key "race_times", "events"
  add_foreign_key "rollers", "gimmicks"
end
