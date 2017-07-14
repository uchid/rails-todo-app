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

ActiveRecord::Schema.define(version: 20170713110304) do

  create_table "paticipating_states", force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_paticipating_states_on_project_id"
    t.index ["user_id"], name: "index_paticipating_states_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "purpose"
    t.integer "work_space_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["work_space_id"], name: "index_projects_on_work_space_id"
  end

  create_table "todos", force: :cascade do |t|
    t.text "content"
    t.date "todo_date"
    t.time "todo_time"
    t.boolean "done", default: false
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_todos_on_project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "work_spaces", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
