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

ActiveRecord::Schema.define(version: 20160123214800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expedients", force: :cascade do |t|
    t.integer  "numero"
    t.string   "caratula"
    t.string   "actor"
    t.string   "demandado"
    t.string   "abogado"
    t.string   "telefono_abogado"
    t.string   "email_abogado"
    t.string   "perito_medico"
    t.string   "perito_medico_email"
    t.string   "perito_medico_telefono"
    t.integer  "perito_medico_incapacidad"
    t.string   "perito_psicologico"
    t.string   "perito_psicologico_email"
    t.string   "perito_psicologico_telefono"
    t.integer  "perito_psicologico_incapacidad"
    t.string   "perito_contable"
    t.string   "perito_contable_email"
    t.string   "perito_contable_telefono"
    t.integer  "perito_contable_incapacidad"
    t.integer  "ibm"
    t.integer  "indenmizacion"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "updates", force: :cascade do |t|
    t.integer  "expedient_id"
    t.text     "novedad"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

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
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
