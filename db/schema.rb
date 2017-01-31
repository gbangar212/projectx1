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

ActiveRecord::Schema.define(version: 20170109173708) do

  create_table "admins", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "candidates", force: :cascade do |t|
    t.string   "email_id"
    t.string   "password_digest"
    t.string   "name"
    t.string   "tel_no"
    t.string   "skype_id"
    t.string   "linkedin_url"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "current_employer"
    t.string   "bachelor_college"
    t.string   "masters_college"
  end

  create_table "currencies", force: :cascade do |t|
    t.text     "currency"
    t.text     "short"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employers", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interviewers", force: :cascade do |t|
    t.string   "email_id"
    t.string   "password_digest"
    t.string   "name"
    t.text     "bio"
    t.string   "skill_1"
    t.string   "skill_2"
    t.string   "skill_3"
    t.string   "skill_4"
    t.string   "skill_5"
    t.string   "tel_no"
    t.string   "skype_id"
    t.string   "linkedin_url"
    t.string   "voice_call_y"
    t.float    "voice_call_r"
    t.string   "video_call_y"
    t.float    "video_call_r"
    t.string   "meeting_y"
    t.float    "meeting_r"
    t.string   "currency"
    t.string   "current_emp"
    t.string   "prev_emp_1"
    t.string   "prev_emp_2"
    t.integer  "rating"
    t.integer  "no_of_rating"
    t.float    "money_earner"
    t.float    "money_disbursed"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "no_interviews"
    t.         "bachelor_college"
    t.string   "masters_college"
  end

  create_table "requests", force: :cascade do |t|
    t.date     "date_1"
    t.time     "time_1"
    t.date     "date_2"
    t.time     "time_2"
    t.date     "date_3"
    t.time     "time_3"
    t.date     "date_4"
    t.time     "time_4"
    t.date     "date_5"
    t.time     "time_5"
    t.string   "mode"
    t.string   "approved"
    t.date     "approved_date"
    t.time     "approved_time"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "candidate"
    t.string   "interviewer"
  end

  create_table "schedules", force: :cascade do |t|
    t.string   "request_id"
    t.string   "from_id"
    t.string   "to_id"
    t.date     "date"
    t.time     "start_time"
    t.string   "mode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string   "query"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.text     "skill"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testimonials", force: :cascade do |t|
    t.text     "text"
    t.string   "from_id"
    t.string   "to_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
