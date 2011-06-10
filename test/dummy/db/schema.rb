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

ActiveRecord::Schema.define(:version => 20110610070032) do

  create_table "accounts", :force => true do |t|
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["user_id", "user_type"], :name => "index_accounts_on_user_id_and_user_type"

  create_table "payments", :force => true do |t|
    t.integer  "amount"
    t.string   "state"
    t.string   "protocol"
    t.integer  "account_id"
    t.text     "details"
    t.integer  "gateway_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscription_addresses", :force => true do |t|
    t.integer  "account_id"
    t.string   "town"
    t.string   "city"
    t.string   "postcode"
    t.string   "country"
    t.string   "line1"
    t.string   "line2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscriptions", :force => true do |t|
    t.integer  "account_id"
    t.string   "name"
    t.integer  "base_cost"
    t.string   "period"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
