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

ActiveRecord::Schema[7.1].define(version: 2024_01_28_123258) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "app_buildpacks", force: :cascade do |t|
    t.bigint "buildpack_id", null: false
    t.integer "position", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buildpack_id"], name: "index_app_buildpacks_on_buildpack_id"
  end

  create_table "app_deploys", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_id"], name: "index_app_deploys_on_app_id"
  end

  create_table "app_plugins", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.bigint "plugin_id", null: false
    t.string "service_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_id"], name: "index_app_plugins_on_app_id"
    t.index ["plugin_id"], name: "index_app_plugins_on_plugin_id"
  end

  create_table "app_variables", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.string "name", null: false
    t.string "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_id"], name: "index_app_variables_on_app_id"
  end

  create_table "apps", force: :cascade do |t|
    t.string "uuid", null: false
    t.string "name", null: false
    t.string "description"
    t.string "url"
    t.string "deploy_type", null: false
    t.boolean "is_active", default: true, null: false
    t.boolean "is_locked", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buildpacks", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deploys", force: :cascade do |t|
    t.text "output"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plugins", force: :cascade do |t|
    t.string "name", null: false
    t.string "service_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_projects", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_team_projects_on_project_id"
    t.index ["team_id"], name: "index_team_projects_on_team_id"
  end

  create_table "team_users", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_team_users_on_team_id"
    t.index ["user_id"], name: "index_team_users_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_app_activities", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.bigint "user_id", null: false
    t.string "action", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_id"], name: "index_user_app_activities_on_app_id"
    t.index ["user_id"], name: "index_user_app_activities_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "surname", default: "", null: false
    t.string "avatar", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "app_buildpacks", "buildpacks"
  add_foreign_key "app_deploys", "apps"
  add_foreign_key "app_plugins", "apps"
  add_foreign_key "app_plugins", "plugins"
  add_foreign_key "app_variables", "apps"
  add_foreign_key "team_projects", "projects"
  add_foreign_key "team_projects", "teams"
  add_foreign_key "team_users", "teams"
  add_foreign_key "team_users", "users"
  add_foreign_key "user_app_activities", "apps"
  add_foreign_key "user_app_activities", "users"
end
