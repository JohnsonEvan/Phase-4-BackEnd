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

ActiveRecord::Schema[7.0].define(version: 2022_04_22_151848) do
  create_table "ceos", force: :cascade do |t|
    t.string "name"
    t.string "company_name"
    t.string "position"
    t.integer "salary"
    t.date "date_of_birth"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.integer "salary"
    t.string "date_of_birth"
    t.integer "manager_id"
    t.index ["manager_id"], name: "index_employees_on_manager_id"
  end

  create_table "managers", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.integer "salary"
    t.date "date_of_birth"
    t.integer "supervisor_id"
    t.index ["supervisor_id"], name: "index_managers_on_supervisor_id"
  end

  create_table "supervisors", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.integer "salary"
    t.date "date_of_birth"
    t.integer "ceo_id"
    t.index ["ceo_id"], name: "index_supervisors_on_ceo_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
