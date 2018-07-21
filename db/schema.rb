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

ActiveRecord::Schema.define(version: 20180720122325) do

  create_table "categories", force: :cascade do |t|
    t.string   "category_contents"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "github_skills", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "skill_id"
    t.integer  "skill_byte"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string   "message_contents"
    t.integer  "receive_user_id"
    t.integer  "send_user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "portfolio_categories", force: :cascade do |t|
    t.integer  "portfolio_id"
    t.integer  "category_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "portfolio_skills", force: :cascade do |t|
    t.integer  "portfolio_id"
    t.integer  "skill_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.string   "portfolio_title"
    t.string   "portfolio_contents"
    t.string   "portfolio_file"
    t.string   "portfolio_start"
    t.string   "portfolio_end"
    t.string   "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "project_categories", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "project_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "project_comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.string   "comment_contents"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "project_skills", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "project_title"
    t.string   "image_path"
    t.integer  "user_id"
    t.integer  "project_people"
    t.integer  "project_views"
    t.integer  "project_complete"
    t.datetime "project_start"
    t.datetime "project_end"
    t.text     "project_contents"
    t.integer  "skill_id"
    t.integer  "category_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "skill_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "skill_contents"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "user_categories", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_comments", force: :cascade do |t|
    t.string   "comment_contents"
    t.string   "date"
    t.integer  "reply_user_id"
    t.integer  "profile_user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "user_projects", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "user_name"
    t.string   "user_access_token"
    t.string   "user_password"
    t.string   "user_image"
    t.string   "user_contents"
    t.string   "git_skill_1"
    t.string   "git_skill_2"
    t.string   "git_skill_3"
    t.string   "birth"
    t.string   "address"
    t.string   "tel"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
