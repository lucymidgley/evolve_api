# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_13_014548) do

  create_table "cells", force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "size"
    t.float "x_coord"
    t.float "y_coord"
    t.integer "speed"
    t.string "colour"
    t.integer "perception"
    t.integer "energy_efficiency"
    t.integer "max_energy"
    t.integer "energy_level"
    t.integer "max_size"
    t.integer "age"
    t.integer "reproductive_age"
    t.integer "life_span"
    t.integer "offspring_capacity"
    t.integer "parent_1"
    t.integer "parent_2"
    t.string "name"
    t.boolean "predator"
    t.integer "sex"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_cells_on_game_id"
  end

  create_table "food_instances", force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "food_id", null: false
    t.float "x_coord"
    t.float "y_coord"
    t.integer "energy_level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_id"], name: "index_food_instances_on_food_id"
    t.index ["game_id"], name: "index_food_instances_on_game_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.integer "energy"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "temperature"
    t.string "name"
    t.string "screen_capture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "username"
    t.string "password"
    t.string "profile_pic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cells", "games"
  add_foreign_key "food_instances", "foods"
  add_foreign_key "food_instances", "games"
  add_foreign_key "games", "users"
end
