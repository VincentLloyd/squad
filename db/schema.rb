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

ActiveRecord::Schema.define(version: 20170515144229) do

  create_table "captain_profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "bio",           null: false
    t.string   "contact_phone", null: false
    t.string   "contact_email", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["contact_phone", "contact_email"], name: "index_captain_profiles_on_contact_phone_and_contact_email", unique: true
    t.index ["user_id"], name: "index_captain_profiles_on_user_id"
  end

  create_table "exercise_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercise_types_in_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "exercise_type_id"
    t.boolean  "offered"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["exercise_type_id"], name: "index_exercise_types_in_users_on_exercise_type_id"
    t.index ["user_id"], name: "index_exercise_types_in_users_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "username",   null: false
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.date     "birth_date", null: false
    t.string   "gender"
    t.string   "avatar_src"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
    t.index ["username"], name: "index_profiles_on_username", unique: true
  end

  create_table "squad_group_types", force: :cascade do |t|
    t.integer  "squadgroup_id"
    t.integer  "exercise_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["exercise_type_id"], name: "index_squad_group_types_on_exercise_type_id"
    t.index ["squadgroup_id"], name: "index_squad_group_types_on_squadgroup_id"
  end

  create_table "squad_groups", force: :cascade do |t|
    t.integer  "captain_id"
    t.string   "name"
    t.string   "location"
    t.integer  "max_members"
    t.integer  "price"
    t.integer  "exercise_types_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["captain_id"], name: "index_squad_groups_on_captain_id"
    t.index ["exercise_types_id"], name: "index_squad_groups_on_exercise_types_id"
  end

  create_table "squad_members", force: :cascade do |t|
    t.integer  "squadgroup_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["squadgroup_id"], name: "index_squad_members_on_squadgroup_id"
    t.index ["user_id"], name: "index_squad_members_on_user_id"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
