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

ActiveRecord::Schema.define(version: 20180814162212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tubing_conditions", force: :cascade do |t|
    t.string  "weather_condition"
    t.integer "temperature_f"
    t.integer "flow_rate_cfs"
  end

  add_index "tubing_conditions", ["flow_rate_cfs"], name: "index_tubing_conditions_on_flow_rate_cfs", using: :btree
  add_index "tubing_conditions", ["temperature_f"], name: "index_tubing_conditions_on_temperature_f", using: :btree
  add_index "tubing_conditions", ["weather_condition"], name: "index_tubing_conditions_on_weather_condition", using: :btree

end
