# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_10_28_005234) do
  create_table "challenges", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.integer "user_id"
    t.string "length_of_time"
    t.string "pic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "computerskills", force: :cascade do |t|
    t.string "name"
    t.string "level"
    t.text "details"
    t.integer "resume_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_computerskills_on_resume_id"
  end

  create_table "diplomes", force: :cascade do |t|
    t.date "datedebut"
    t.date "datefin"
    t.string "nom_diplome"
    t.boolean "until_today"
    t.string "nom_ecole"
    t.string "lieu"
    t.text "details"
    t.integer "resume_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_diplomes_on_resume_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "resume_id", null: false
    t.date "datedebut"
    t.date "datefin"
    t.boolean "until_today"
    t.string "mission"
    t.string "entreprise"
    t.string "lieu"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_jobs_on_resume_id"
  end

  create_table "jobsearches", force: :cascade do |t|
    t.string "what"
    t.string "where"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "metchallenges", force: :cascade do |t|
    t.integer "challenge_id"
    t.integer "user_id"
    t.text "details"
    t.string "pic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "started_at"
    t.datetime "met_at"
  end

  create_table "resumeassets", force: :cascade do |t|
    t.integer "resume_id", null: false
    t.string "name"
    t.text "details"
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_resumeassets_on_resume_id"
  end

  create_table "resumes", force: :cascade do |t|
    t.integer "user_id"
    t.string "poste_convoite"
    t.string "nom_complet"
    t.string "ville"
    t.string "permis"
    t.string "projet_professionnel"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spokenlanguages", force: :cascade do |t|
    t.integer "resume_id", null: false
    t.integer "language_id", null: false
    t.string "level"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_spokenlanguages_on_language_id"
    t.index ["resume_id"], name: "index_spokenlanguages_on_resume_id"
  end

  create_table "usersearches", force: :cascade do |t|
    t.integer "jobsearch_id", null: false
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rayon"
    t.index ["jobsearch_id"], name: "index_usersearches_on_jobsearch_id"
  end

  create_table "ville_mobilites", force: :cascade do |t|
    t.string "name"
    t.integer "resume_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_ville_mobilites_on_resume_id"
  end

  add_foreign_key "computerskills", "resumes"
  add_foreign_key "diplomes", "resumes"
  add_foreign_key "jobs", "resumes"
  add_foreign_key "resumeassets", "resumes"
  add_foreign_key "spokenlanguages", "languages"
  add_foreign_key "spokenlanguages", "resumes"
  add_foreign_key "usersearches", "jobsearches"
  add_foreign_key "ville_mobilites", "resumes"
end
