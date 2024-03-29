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

ActiveRecord::Schema.define(version: 20140521063433) do

  create_table "forum_forums", force: true do |t|
    t.integer  "parent_forum_id"
    t.string   "name"
    t.integer  "pos"
    t.integer  "moderator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forum_posts", force: true do |t|
    t.integer  "thread_id"
    t.string   "subject"
    t.text     "body"
    t.integer  "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forum_threads", force: true do |t|
    t.integer  "creator"
    t.string   "subject"
    t.integer  "forum_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
