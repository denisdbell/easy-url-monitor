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

ActiveRecord::Schema.define(version: 20170625200449) do

  create_table "app_configurations", force: :cascade do |t|
    t.integer  "monitor_delay_In_seconds"
    t.string   "smtp_server"
    t.string   "smtp_port"
    t.boolean  "ssl_required"
    t.string   "username"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "app_configurations_monitored_urls", id: false, force: :cascade do |t|
    t.integer "app_configuration_id"
    t.integer "monitored_url_id"
  end

  create_table "app_configurations_notification_emails", id: false, force: :cascade do |t|
    t.integer "app_configuration_id"
    t.integer "notifcation_email_id"
  end

  create_table "monitor_results", force: :cascade do |t|
    t.integer  "http_response_code"
    t.text     "http_reponse_body"
    t.boolean  "active"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "monitored_urls", force: :cascade do |t|
    t.string   "url"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifcation_emails", force: :cascade do |t|
    t.string   "email"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
