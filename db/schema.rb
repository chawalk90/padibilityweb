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

ActiveRecord::Schema.define(version: 20140818225210) do

  create_table "surveys", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "user_status"
    t.string   "email"
    t.boolean  "loooking_for"
    t.string   "moving_to"
    t.boolean  "gender"
    t.boolean  "coed"
    t.integer  "age"
    t.string   "roommate_type"
    t.string   "housing_type"
    t.integer  "roommates_estimate"
    t.integer  "roommates_amount"
    t.boolean  "roommates_group"
    t.string   "roommates_names"
    t.integer  "wake_up"
    t.integer  "bedtime"
    t.integer  "max_rent"
    t.integer  "min_rent"
    t.integer  "move_in"
    t.integer  "move_out"
    t.integer  "bedrooms"
    t.string   "bathrooms"
    t.boolean  "amenities"
    t.boolean  "apartment_pet"
    t.boolean  "roommate_pet"
    t.string   "hometown"
    t.string   "school"
    t.string   "company"
    t.boolean  "terms"
    t.string   "avatar"
    t.boolean  "smoke"
    t.string   "smokeoften"
    t.boolean  "smokesocially"
    t.boolean  "smokequit"
    t.boolean  "drink"
    t.string   "drinkoften"
    t.boolean  "drinksocially"
    t.boolean  "drinkquit"
    t.boolean  "drugs"
    t.string   "drugsoften"
    t.boolean  "drugssocially"
    t.boolean  "drugsquit"
    t.string   "interest"
    t.string   "sexualactivity"
    t.boolean  "sexprivacy"
    t.boolean  "roommatesexprivacy"
    t.boolean  "overnight"
    t.string   "overnightoften"
    t.boolean  "roommateovernight"
    t.string   "realty"
    t.boolean  "availability"
    t.integer  "rentprice"
    t.string   "address"
    t.string   "otherroom"
    t.integer  "age_min"
    t.integer  "age_max"
    t.integer  "age_mode"
    t.string   "pad_photo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "noise"
    t.string   "sociability"
    t.string   "tidiness"
    t.string   "political"
    t.string   "religion"
    t.string   "sex_privacy"
    t.string   "smoke_often"
    t.string   "drink_often"
    t.string   "overnight_often"
    t.string   "question"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
