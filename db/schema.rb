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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110809212012) do

  create_table "events", :force => true do |t|
    t.string   "title"
    t.date     "date"
    t.time     "time"
    t.text     "location"
    t.text     "descrition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "podcasts", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.string   "screenshot"
    t.integer  "size"
    t.string   "duration"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.date     "timestamp"
    t.date     "created"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "about"
    t.text     "links"
    t.string   "avatar"
    t.string   "token"
    t.date     "user_since"
    t.string   "github_user_id"
    t.string   "twitter_user_id"
    t.integer  "login_count"
    t.date     "ruby_since"
    t.string   "neighborhood"
    t.boolean  "available"
    t.boolean  "show_email"
    t.boolean  "email_reminders"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
