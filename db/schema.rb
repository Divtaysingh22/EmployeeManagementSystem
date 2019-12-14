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

ActiveRecord::Schema.define(version: 2019_12_12_030529) do

  create_table "contects", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "mobile"
    t.string "city"
    t.string "state"
  end

  create_table "departments", force: :cascade do |t|
    t.string "department_name"
    t.string "department_type"
    t.integer "member_strength"
    t.string "description"
  end

  create_table "emp23", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.integer "empid"
    t.string "qualification"
    t.string "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "emp_id"
    t.text "education"
    t.integer "age"
    t.string "department"
    t.integer "department_id"
    t.integer "project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "project_name"
    t.string "description"
  end

end
