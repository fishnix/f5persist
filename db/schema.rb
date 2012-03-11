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

ActiveRecord::Schema.define(:version => 20120311153533) do

  create_table "f5_persist_lists", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "f5_persist_records", :force => true do |t|
    t.integer  "f5_persist_list_id"
    t.integer  "tmm"
    t.string   "mode"
    t.text     "value"
    t.integer  "age"
    t.text     "virtual_name"
    t.string   "virtual_addr"
    t.string   "node_addr"
    t.text     "pool_name"
    t.string   "client_adr"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end