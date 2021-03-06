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

ActiveRecord::Schema.define(version: 20170325174423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "basic_profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "maiden_name"
    t.string   "formatted_name"
    t.string   "headline"
    t.string   "location"
    t.string   "industry"
    t.string   "summary"
    t.string   "specialties"
    t.string   "picture_url"
    t.string   "public_profile_url"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
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
    t.string   "bachelor_college"
    t.string   "masters_college"
    t.string   "current_employer"
  end

  create_table "currencies", force: :cascade do |t|
    t.text     "currency"
    t.text     "short"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string   "school_name"
    t.string   "field_of_study"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "degree"
    t.string   "activities"
    t.string   "notes"
    t.integer  "full_profile_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "employers", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "full_profiles", force: :cascade do |t|
    t.string   "associations"
    t.string   "honors"
    t.string   "interests"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
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
    t.string   "bachelor_college"
    t.string   "masters_college"
  end

  create_table "linkedin_oauth_settings", force: :cascade do |t|
    t.string   "atoken"
    t.string   "asecret"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "title"
    t.string   "summary"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "is_current"
    t.string   "company"
    t.integer  "full_profile_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
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
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "candidate"
    t.string   "interviewer"
    t.string   "request_status"
    t.string   "reason"
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

  create_table "supports", force: :cascade do |t|
    t.string   "candidate"
    t.string   "interviewer"
    t.string   "request"
    t.string   "request_type"
    t.text     "message"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "status"
  end

  create_table "testimonials", force: :cascade do |t|
    t.text     "text"
    t.string   "from_id"
    t.string   "to_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
