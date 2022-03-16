# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_03_15_230636) do
  create_table "generos", force: :cascade do |t|
    t.string "nombre"
    t.string "imagen"
    t.integer "personaje_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personaje_id"], name: "index_generos_on_personaje_id"
  end

  create_table "pelicula_personajes", force: :cascade do |t|
    t.integer "pelicula_id", null: false
    t.integer "personaje_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pelicula_id"], name: "index_pelicula_personajes_on_pelicula_id"
    t.index ["personaje_id"], name: "index_pelicula_personajes_on_personaje_id"
  end

  create_table "peliculas", force: :cascade do |t|
    t.string "imagen"
    t.text "titulo"
    t.date "fecha_de_creacion"
    t.integer "calificacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personajes", force: :cascade do |t|
    t.string "imagen"
    t.string "nombre"
    t.integer "edad"
    t.float "peso"
    t.text "historia"
    t.string "pelicula"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "generos", "personajes"
  add_foreign_key "pelicula_personajes", "peliculas"
  add_foreign_key "pelicula_personajes", "personajes"
end
