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

ActiveRecord::Schema.define(version: 2018_10_31_224952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrators", force: :cascade do |t|
    t.string "cellphone"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_administrators_on_user_id"
  end

  create_table "cities", force: :cascade do |t|
    t.integer "codigo"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer "codigo"
    t.string "name"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_locations_on_city_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "description"
    t.string "question"
    t.string "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "school"
    t.bigint "administrator_id"
    t.bigint "user_id"
    t.bigint "grade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["administrator_id"], name: "index_students_on_administrator_id"
    t.index ["grade_id"], name: "index_students_on_grade_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.bigint "grade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_subjects_on_grade_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.integer "number"
    t.string "address"
    t.string "phone"
    t.integer "rol"
    t.bigint "location_id"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_users_on_city_id"
    t.index ["location_id"], name: "index_users_on_location_id"
  end

  create_table "workshops", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.integer "score"
    t.date "deadline"
    t.bigint "subject_id"
    t.bigint "question_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_workshops_on_question_id"
    t.index ["student_id"], name: "index_workshops_on_student_id"
    t.index ["subject_id"], name: "index_workshops_on_subject_id"
  end

  add_foreign_key "administrators", "users"
  add_foreign_key "locations", "cities"
  add_foreign_key "students", "administrators"
  add_foreign_key "students", "users"
  add_foreign_key "subjects", "grades"
  add_foreign_key "users", "cities"
  add_foreign_key "users", "locations"
  add_foreign_key "workshops", "questions"
  add_foreign_key "workshops", "students"
  add_foreign_key "workshops", "subjects"
end
