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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120120200252) do

  create_table "characters", :force => true do |t|
    t.string    "name"
    t.string    "image"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "cities", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "exercises", :force => true do |t|
    t.string    "title"
    t.string    "discription"
    t.string    "rightvideo"
    t.string    "righttext"
    t.string    "wrongvideo"
    t.string    "wrongtext"
    t.timestamp "created_at",  :null => false
    t.timestamp "updated_at",  :null => false
  end

  create_table "funds", :force => true do |t|
    t.integer   "taction",    :default => 0
    t.integer   "user_id"
    t.string    "comment"
    t.timestamp "created_at",                :null => false
    t.timestamp "updated_at",                :null => false
    t.integer   "gold",       :default => 0
  end

  create_table "infos", :force => true do |t|
    t.text      "text"
    t.integer   "location",   :default => 1
    t.timestamp "created_at",                :null => false
    t.timestamp "updated_at",                :null => false
  end

  create_table "missions", :force => true do |t|
    t.string    "name"
    t.string    "image"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "plushkis", :force => true do |t|
    t.integer  "user_id"
    t.integer  "sum"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "prizes", :force => true do |t|
    t.string    "title"
    t.string    "description"
    t.string    "image"
    t.timestamp "created_at",  :null => false
    t.timestamp "updated_at",  :null => false
  end

  create_table "professions", :force => true do |t|
    t.string    "name"
    t.string    "image"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "rewards", :force => true do |t|
    t.integer   "user_id"
    t.integer   "prize_id"
    t.string    "text"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "tenders", :force => true do |t|
    t.string    "img"
    t.string    "comment"
    t.integer   "user_id"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string    "name"
    t.string    "email"
    t.string    "password_digest"
    t.timestamp "created_at",                        :null => false
    t.timestamp "updated_at",                        :null => false
    t.integer   "character_id"
    t.integer   "profession_id"
    t.integer   "level"
    t.string    "city"
    t.integer   "maxhealth"
    t.integer   "mission_id"
    t.boolean   "zr"
    t.integer   "craft"
    t.integer   "city_id"
    t.string    "about"
    t.string    "avatar"
    t.boolean   "status",          :default => true
    t.date      "bd"
  end

  create_table "walls", :force => true do |t|
    t.integer   "user_id"
    t.string    "post"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

end
