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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160910101630) do

  create_table "prescriptions", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "request_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prescriptions", ["request_id"], name: "index_prescriptions_on_request_id", using: :btree
  add_index "prescriptions", ["user_id"], name: "index_prescriptions_on_user_id", using: :btree

  create_table "requests", force: :cascade do |t|
    t.integer  "user_id",         limit: 4
    t.integer  "medicine_type",   limit: 4
    t.integer  "prescription_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "requests", ["prescription_id"], name: "index_requests_on_prescription_id", using: :btree
  add_index "requests", ["user_id"], name: "index_requests_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
=======
ActiveRecord::Schema.define(version: 20160910092939) do

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.date     "dob"
    t.string   "phone",                  limit: 15
    t.string   "address",                limit: 255
    t.string   "license",                limit: 255
    t.integer  "country_id",             limit: 2
    t.integer  "state_id",               limit: 1
    t.integer  "status",                 limit: 1,   default: 0
    t.string   "pincode",                limit: 8
    t.integer  "role",                   limit: 1,   default: 0
    t.boolean  "mobile",                             default: false
    t.string   "email",                  limit: 255,                 null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 3,   default: 0
>>>>>>> f0e55eaf50d627550b8d4f75b8e6cad9d37d0486
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
<<<<<<< HEAD
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

=======
    t.string   "ip",                     limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
>>>>>>> f0e55eaf50d627550b8d4f75b8e6cad9d37d0486
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
