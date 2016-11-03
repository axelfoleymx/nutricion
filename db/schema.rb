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

ActiveRecord::Schema.define(version: 20161103190341) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bebidas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "cantidad"
    t.float    "porcion"
    t.float    "gramos"
    t.float    "calorias"
    t.integer  "diet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bebidas", ["diet_id"], name: "index_bebidas_on_diet_id", using: :btree

  create_table "colacions", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "cantidad"
    t.float    "porcion"
    t.float    "gramos"
    t.float    "calorias"
    t.integer  "diet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "colacions", ["diet_id"], name: "index_colacions_on_diet_id", using: :btree

  create_table "diets", force: :cascade do |t|
    t.string   "food1"
    t.string   "food2"
    t.string   "food3"
    t.string   "food4"
    t.string   "food5"
    t.string   "food6"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entradas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "cantidad"
    t.float    "porcion"
    t.float    "gramos"
    t.float    "calorias"
    t.integer  "diet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "entradas", ["diet_id"], name: "index_entradas_on_diet_id", using: :btree

  create_table "platillos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "cantidad"
    t.float    "porcion"
    t.float    "gramos"
    t.float    "calorias"
    t.integer  "diet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "platillos", ["diet_id"], name: "index_platillos_on_diet_id", using: :btree

  create_table "postres", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "cantidad"
    t.float    "porcion"
    t.float    "gramos"
    t.float    "calorias"
    t.integer  "diet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "postres", ["diet_id"], name: "index_postres_on_diet_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "bebidas", "diets"
  add_foreign_key "colacions", "diets"
  add_foreign_key "entradas", "diets"
  add_foreign_key "platillos", "diets"
  add_foreign_key "postres", "diets"
end
