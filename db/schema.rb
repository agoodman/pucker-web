# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100328182348) do

  create_table "games", :force => true do |t|
    t.string   "uuid"
    t.boolean  "active",     :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moves", :force => true do |t|
    t.integer  "game_id"
    t.float    "x"
    t.float    "y"
    t.float    "angle"
    t.float    "power"
    t.integer  "attempts"
    t.integer  "score_differential"
    t.integer  "max_multiplier"
    t.boolean  "attempt_failed",     :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pieces", :force => true do |t|
    t.integer  "move_id"
    t.float    "x"
    t.float    "y"
    t.float    "radius"
    t.integer  "count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
