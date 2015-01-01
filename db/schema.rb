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

ActiveRecord::Schema.define(version: 20150101014447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounting_transactions", force: true do |t|
    t.float    "ammount"
    t.string   "reff_number"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
    t.string   "for"
    t.string   "p_method"
    t.integer  "property_id"
  end

  add_index "accounting_transactions", ["property_id"], name: "index_accounting_transactions_on_property_id", using: :btree

  create_table "issues", force: true do |t|
    t.string  "note"
    t.integer "property_id"
    t.string  "status"
  end

  add_index "issues", ["property_id"], name: "index_issues_on_property_id", using: :btree

  create_table "landlords", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone"
    t.string   "password_digest"
  end

  create_table "messages", force: true do |t|
    t.string   "to"
    t.string   "from"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tenant_id"
  end

  add_index "messages", ["tenant_id"], name: "index_messages_on_tenant_id", using: :btree

  create_table "notes", force: true do |t|
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "property_id"
  end

  add_index "notes", ["property_id"], name: "index_notes_on_property_id", using: :btree

  create_table "properties", force: true do |t|
    t.string   "address"
    t.integer  "rent"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "landlord_id"
    t.integer  "rdue"
  end

  add_index "properties", ["landlord_id"], name: "index_properties_on_landlord_id", using: :btree

  create_table "rent_payments", force: true do |t|
    t.integer  "ammount"
    t.date     "date_due"
    t.date     "date_paid"
    t.string   "status"
    t.string   "reff"
    t.string   "method"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tenant_id"
  end

  add_index "rent_payments", ["tenant_id"], name: "index_rent_payments_on_tenant_id", using: :btree

  create_table "tenants", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone"
    t.integer  "property_id"
  end

  add_index "tenants", ["property_id"], name: "index_tenants_on_property_id", using: :btree

end
