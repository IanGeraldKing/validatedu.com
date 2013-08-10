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

ActiveRecord::Schema.define(version: 20130810181222) do

  create_table "completed_courses", force: true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "completion_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "completed_courses", ["course_id"], name: "index_completed_courses_on_course_id"
  add_index "completed_courses", ["user_id"], name: "index_completed_courses_on_user_id"

  create_table "courses", force: true do |t|
    t.integer  "school_id"
    t.string   "name"
    t.string   "image_url"
    t.string   "teacher_names"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["school_id"], name: "index_courses_on_school_id"

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "image_url"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subject_tags", force: true do |t|
    t.integer  "course_id"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subject_tags", ["course_id"], name: "index_subject_tags_on_course_id"
  add_index "subject_tags", ["topic_id"], name: "index_subject_tags_on_topic_id"

  create_table "topics", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "country"
    t.string   "state"
    t.string   "institution"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
