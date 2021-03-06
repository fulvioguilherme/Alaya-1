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

ActiveRecord::Schema.define(version: 20150428041259) do

  create_table "appointments", force: :cascade do |t|
    t.integer  "provider_id"
    t.integer  "client_id"
    t.datetime "time_start"
    t.datetime "time_end"
    t.integer  "accepted"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "client_observation"
    t.integer  "appointment_type",   default: 0
  end

  add_index "appointments", ["provider_id", "created_at"], name: "index_appointments_on_provider_id_and_created_at"

  create_table "areas", force: :cascade do |t|
    t.integer  "provider_id"
    t.string   "area"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "certifications", force: :cascade do |t|
    t.integer  "provider_id"
    t.string   "certification"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.string   "weeks_pregnant"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.integer  "active"
    t.string   "profile"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  add_index "clients", ["remember_token"], name: "index_clients_on_remember_token"

  create_table "provider_schedules", force: :cascade do |t|
    t.integer  "provider_id"
    t.string   "timeid"
    t.boolean  "unavailable"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "time"
  end

  create_table "providers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "email"
    t.integer  "admin"
    t.text     "expertise"
    t.string   "phone"
    t.text     "abstract"
    t.text     "about"
    t.text     "specialty_text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.text     "policies"
    t.string   "last_name"
    t.integer  "active"
    t.string   "remember_token"
    t.string   "picture_path"
    t.string   "profile"
    t.text     "service_text"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  add_index "providers", ["email"], name: "index_providers_on_email", unique: true
  add_index "providers", ["remember_token"], name: "index_providers_on_remember_token"

  create_table "reviews", force: :cascade do |t|
    t.integer  "provider_id"
    t.text     "review"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: :cascade do |t|
    t.integer  "provider_id"
    t.string   "service"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specialties", force: :cascade do |t|
    t.integer  "provider_id"
    t.string   "specialty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zip_codes", force: :cascade do |t|
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

end
