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

ActiveRecord::Schema.define(version: 20160320184225) do

  create_table "food_timings", force: :cascade do |t|
    t.string   "timing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.integer  "type_id"
    t.integer  "restaurant_id"
    t.integer  "food_timing_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nutrition_facts", force: :cascade do |t|
    t.integer  "food_id"
    t.integer  "servingSize"
    t.integer  "calories"
    t.float    "protein"
    t.float    "totalFat"
    t.float    "saturated"
    t.float    "trans"
    t.float    "cholesterol"
    t.float    "carbohydrates"
    t.float    "sugars"
    t.float    "dietaryFiber"
    t.float    "sodium"
    t.float    "potassium"
    t.float    "magnesium"
    t.float    "calcium"
    t.float    "iron"
    t.float    "vitaminD"
    t.boolean  "vegetarian"
    t.boolean  "vegan"
    t.boolean  "dairyAllergy"
    t.boolean  "eggAllergy"
    t.boolean  "peanutAllergy"
    t.boolean  "treenutAllergy"
    t.boolean  "fishAllergy"
    t.boolean  "shellfishAllergy"
    t.boolean  "soyAllergy"
    t.boolean  "wheatAllergy"
    t.boolean  "wholeGrain"
    t.boolean  "healthfulChoice"
    t.boolean  "heartSmart"
    t.boolean  "kosher"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
