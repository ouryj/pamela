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

ActiveRecord::Schema.define(version: 2019_02_09_175748) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.text "name"
    t.datetime "startDate"
    t.datetime "endDate"
    t.string "instructor"
    t.string "students"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_id"
    t.index ["course_id"], name: "index_cohorts_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.text "name"
    t.integer "totalInClassHours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.integer "age"
    t.text "salary"
    t.text "educationPeak"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cohort_id"
    t.index ["cohort_id"], name: "index_instructors_on_cohort_id"
  end

  create_table "studentcohorts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "student_id"
    t.bigint "cohort_id"
    t.index ["cohort_id"], name: "index_studentcohorts_on_cohort_id"
    t.index ["student_id"], name: "index_studentcohorts_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.integer "age"
    t.text "educationPeak"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
