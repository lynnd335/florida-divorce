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

ActiveRecord::Schema.define(version: 20160621160320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checklists", force: :cascade do |t|
    t.string   "Client_Name"
    t.string   "Grounds"
    t.string   "Petitioner_Preg_Aff"
    t.string   "Pregnancy_Affidavit_Respondent"
    t.string   "Waiver_Petitioner_s"
    t.string   "Waiver_Respondent_s"
    t.string   "MSA"
    t.string   "Residency_Proof"
    t.string   "Social_Security_Petitioner"
    t.string   "Social_Security_Respondent"
    t.string   "A"
    t.string   "Discovery_Waiver_Signed_by_Both"
    t.string   "Discovery_Waiver_Signed_by_Petitioner"
    t.string   "Discovery_Waiver_Signed_by_Respondent"
    t.string   "Financial_Affidavit_Petitioner"
    t.string   "Financial_Affidavit_Respondent"
    t.string   "Child_Custody_Affidavit"
    t.string   "Parenting_Course_Husband"
    t.string   "Parenting_Course_Wife"
    t.string   "Parenting_Plan"
    t.string   "Gudelines"
    t.string   "Addendum"
    t.string   "Notes"
    t.string   "Client_Email_Address"
    t.boolean  "Send_Link_Email"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
