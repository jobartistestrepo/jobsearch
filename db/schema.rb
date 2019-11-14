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

ActiveRecord::Schema.define(version: 2019_11_14_195656) do

  create_table "candidateapplications", force: :cascade do |t|
    t.integer "candidate_id"
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidate_id"], name: "index_candidateapplications_on_candidate_id"
    t.index ["job_id"], name: "index_candidateapplications_on_job_id"
  end

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.date "dateofbirth"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "industry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobquestions", force: :cascade do |t|
    t.integer "job_id"
    t.text "question"
    t.boolean "questiontype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_jobquestions_on_job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "company_id"
    t.string "title"
    t.date "dateposted"
    t.date "dateend"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_jobs_on_company_id"
  end

end
