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

ActiveRecord::Schema.define(:version => 20120419140724) do

  create_table "details", :force => true do |t|
    t.integer  "exp_or_edu"
    t.integer  "e_id"
    t.string   "detail"
    t.integer  "detail_order"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "edu_details", :force => true do |t|
    t.integer  "education_id"
    t.string   "detail"
    t.integer  "detail_order"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "educations", :force => true do |t|
    t.integer  "user_id"
    t.string   "study"
    t.string   "institution"
    t.string   "institution_url"
    t.string   "graduation"
    t.integer  "list_order"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "exp_details", :force => true do |t|
    t.integer  "experience_id"
    t.string   "detail"
    t.integer  "detail_order"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "experiences", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "company"
    t.string   "company_url"
    t.string   "date"
    t.integer  "list_order"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "skill_sets", :force => true do |t|
    t.integer  "user_id"
    t.string   "skill_name"
    t.integer  "list_order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skills", :force => true do |t|
    t.integer  "skill_set_id"
    t.string   "title"
    t.integer  "rank"
    t.integer  "list_order"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "tagline"
    t.text     "description"
    t.string   "city"
    t.string   "email"
    t.boolean  "emailshow"
    t.string   "headshot_url"
    t.string   "phone"
    t.boolean  "facebookshow"
    t.string   "facebook_url"
    t.boolean  "twittershow"
    t.string   "twitter_url"
    t.boolean  "linkedinshow"
    t.string   "linkedin_url"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
