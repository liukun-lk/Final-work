# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20171118054542) do

  create_table "projects", force: :cascade do |t|
    t.string   "title",                   limit: 255
    t.text     "description",             limit: 65535
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.string   "user_id",                 limit: 255
    t.string   "image_file_name",         limit: 255
    t.string   "image_content_type",      limit: 255
    t.integer  "image_file_size",         limit: 4
    t.datetime "image_updated_at"
    t.integer  "cached_votes_total",      limit: 4,     default: 0
    t.integer  "cached_votes_score",      limit: 4,     default: 0
    t.integer  "cached_votes_up",         limit: 4,     default: 0
    t.integer  "cached_votes_down",       limit: 4,     default: 0
    t.integer  "cached_weighted_score",   limit: 4,     default: 0
    t.integer  "cached_weighted_total",   limit: 4,     default: 0
    t.float    "cached_weighted_average", limit: 24,    default: 0.0
    t.string   "zip_file_name",           limit: 255
    t.string   "zip_content_type",        limit: 255
    t.integer  "zip_file_size",           limit: 4
    t.datetime "zip_updated_at"
  end

  add_index "projects", ["cached_votes_down"], name: "index_projects_on_cached_votes_down", using: :btree
  add_index "projects", ["cached_votes_score"], name: "index_projects_on_cached_votes_score", using: :btree
  add_index "projects", ["cached_votes_total"], name: "index_projects_on_cached_votes_total", using: :btree
  add_index "projects", ["cached_votes_up"], name: "index_projects_on_cached_votes_up", using: :btree
  add_index "projects", ["cached_weighted_average"], name: "index_projects_on_cached_weighted_average", using: :btree
  add_index "projects", ["cached_weighted_score"], name: "index_projects_on_cached_weighted_score", using: :btree
  add_index "projects", ["cached_weighted_total"], name: "index_projects_on_cached_weighted_total", using: :btree
  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "stu_id",                 limit: 255
    t.string   "stu_name",               limit: 255
    t.string   "random_pass",            limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id",   limit: 4
    t.string   "votable_type", limit: 255
    t.integer  "voter_id",     limit: 4
    t.string   "voter_type",   limit: 255
    t.boolean  "vote_flag"
    t.string   "vote_scope",   limit: 255
    t.integer  "vote_weight",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

end
