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

ActiveRecord::Schema.define(version: 20170125130010) do

  create_table "movies", force: :cascade do |t|
    t.string  "name"
    t.integer "year"
    t.float   "length"
    t.string  "description"
    t.string  "genre"
    t.float   "rating"
    t.integer "number_of_votes"
  end

  create_table "participations", id: false, force: :cascade do |t|
    t.integer "movie_id"
    t.integer "person_id"
    t.string  "role"
    t.index ["movie_id"], name: "index_participations_on_movie_id"
    t.index ["person_id"], name: "index_participations_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "nationality"
    t.string "birthday"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "rank"
  end

end
