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

ActiveRecord::Schema.define(version: 20170808210401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "image_url"
    t.string "tel_no"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "agent"
    t.boolean "union"
    t.integer "ht_feet"
    t.integer "ht_inches"
    t.integer "weight"
    t.string "eye_color"
    t.string "hair_color"
    t.string "shoe_size"
    t.string "gender"
    t.string "ethnicity"
    t.string "dob"
    t.string "suit_size"
    t.string "dress_size"
    t.string "shirt_size"
    t.integer "waist"
    t.integer "inseam"
  end

  create_table "actors_projects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "actors_id"
    t.bigint "projects_id"
    t.index ["actors_id"], name: "index_actors_projects_on_actors_id"
    t.index ["projects_id"], name: "index_actors_projects_on_projects_id"
  end

  create_table "auditions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "attended"
    t.string "time"
    t.bigint "actors_id"
    t.bigint "roles_id"
    t.index ["actors_id"], name: "index_auditions_on_actors_id"
    t.index ["roles_id"], name: "index_auditions_on_roles_id"
  end

  create_table "projects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "project_name"
    t.string "production_co"
    t.string "roles"
    t.string "director"
  end

  create_table "roles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "char_name"
    t.bigint "projects_id"
    t.index ["projects_id"], name: "index_roles_on_projects_id"
  end

  add_foreign_key "actors_projects", "actors", column: "actors_id"
  add_foreign_key "actors_projects", "projects", column: "projects_id"
  add_foreign_key "auditions", "actors", column: "actors_id"
  add_foreign_key "auditions", "roles", column: "roles_id"
  add_foreign_key "roles", "projects", column: "projects_id"
end
