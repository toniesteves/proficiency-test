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

ActiveRecord::Schema.define(version: 20160405010137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classrooms", force: true do |t|
    t.date     "entry_at",   default: '2016-04-05'
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "classrooms", ["course_id"], name: "course_id_id_ix", using: :btree
  add_index "classrooms", ["course_id"], name: "index_classrooms_on_course_id", using: :btree
  add_index "classrooms", ["student_id"], name: "index_classrooms_on_student_id", using: :btree
  add_index "classrooms", ["student_id"], name: "student_id_id_ix", using: :btree

  create_table "courses", force: true do |t|
    t.string   "name",        default: ""
    t.text     "description", default: ""
    t.boolean  "status",      default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "name",            default: ""
    t.string   "register_number", default: ""
    t.boolean  "status",          default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["register_number"], name: "register_number_id_ix", using: :btree

end
