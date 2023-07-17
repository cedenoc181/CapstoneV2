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

ActiveRecord::Schema[7.0].define(version: 2023_07_13_023351) do
  create_table "appointments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "physical_therapist_id"
    t.string "case"
    t.boolean "home_visit"
    t.string "scheduled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "target"
    t.string "bodyPart"
    t.string "equipment"
    t.string "gifUrl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "exercise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "physical_therapists", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "profile_picture"
    t.string "title"
    t.string "specialization"
    t.string "npi_number"
    t.string "state"
    t.string "city"
    t.string "clinic_address"
    t.string "phone_number"
    t.string "post_grad__education"
    t.string "insurance_network"
    t.string "languages_spoken"
    t.boolean "home_visits"
    t.text "about_me"
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "physical_therapist_id"
    t.text "users_review"
    t.string "photo"
    t.integer "stars"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "state"
    t.string "city"
    t.string "address"
    t.string "phone_number"
    t.string "DOB"
    t.string "insurance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
