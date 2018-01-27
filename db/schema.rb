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

ActiveRecord::Schema.define(version: 2018_01_27_153125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admins", force: :cascade do |t|
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_admins_on_confirmation_token", unique: true
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_admins_on_unlock_token", unique: true
  end

  create_table "app_settings", force: :cascade do |t|
    t.string "theme_color"
    t.boolean "hidden_sidebar", default: false
    t.boolean "boxed_content", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "driver_profiles", force: :cascade do |t|
    t.string "driver_company_id"
    t.integer "api_id"
    t.string "email"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "phone_ext"
    t.string "image"
    t.string "emergency_contact_name"
    t.string "emergency_contact_phone"
    t.string "time_zone"
    t.string "metric_units"
    t.string "carrier_name"
    t.string "carrier_street"
    t.string "carrier_city"
    t.string "carrier_state"
    t.string "carrier_zip"
    t.string "violation_alerts"
    t.string "terminal_street"
    t.string "terminal_city"
    t.string "terminal_state"
    t.string "terminal_zip"
    t.string "cycle"
    t.string "exception_24_hour_restart"
    t.string "exception_8_hour_break"
    t.string "exception_wait_time"
    t.string "exception_short_haul"
    t.string "exception_ca_farm_school_bus"
    t.string "cycle2"
    t.string "exception_24_hour_restart2"
    t.string "exception_8_hour_break2"
    t.string "exception_wait_time2"
    t.string "exception_short_haul2"
    t.string "exception_ca_farm_school_bus2"
    t.string "export_combined"
    t.string "export_recap"
    t.string "export_odometers"
    t.string "username"
    t.string "minute_logs"
    t.string "duty_status"
    t.string "eld_mode"
    t.string "drivers_license_number"
    t.string "drivers_license_state"
    t.string "yard_moves_enabled"
    t.string "personal_conveyance_enabled"
    t.string "manual_driving_enabled"
    t.string "role"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "driver_profile_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_drivers_on_confirmation_token", unique: true
    t.index ["email"], name: "index_drivers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_drivers_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_drivers_on_unlock_token", unique: true
  end

  create_table "vehicle_locations", force: :cascade do |t|
    t.string "location_id"
    t.string "located_at"
    t.float "latitude"
    t.float "longitude"
    t.float "bearing"
    t.float "engine_hours"
    t.integer "driver_id"
    t.float "fuel"
    t.float "odometer"
    t.float "speed"
    t.string "location_description"
    t.string "movement_type"
    t.string "driver_first_name"
    t.string "driver_last_name"
    t.string "driver_username"
    t.string "driver_company_id"
    t.string "driver_status"
    t.string "driver_role"
    t.integer "edl_id"
    t.string "edl_identifier"
    t.string "edl_model"
    t.date "date"
    t.integer "driver_profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_profile_id"], name: "index_vehicle_locations_on_driver_profile_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer "api_vehicle_company_id"
    t.integer "api_id"
    t.string "number"
    t.string "status"
    t.string "ifta"
    t.string "vin"
    t.string "make"
    t.string "model"
    t.string "year"
    t.string "license_plate_state"
    t.string "license_plate_number"
    t.boolean "metric_units"
    t.string "fuel_type"
    t.string "prevent_auto_odometer_entry"
    t.integer "edl_device_id"
    t.string "edl_identifier"
    t.string "edl_model"
    t.integer "api_driver_id"
    t.string "api_first_name"
    t.string "api_last_name"
    t.string "api_username"
    t.string "api_email"
    t.string "driver_internal_id"
    t.string "api_status"
    t.string "api_role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
