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

ActiveRecord::Schema.define(version: 2021_11_22_170356) do

  create_table "blog1s", charset: "utf8mb3", collation: "utf8_bin", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mensajes", charset: "utf8mb3", collation: "utf8_bin", force: :cascade do |t|
    t.string "autor"
    t.text "mensaje"
    t.bigint "publicacion_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["publicacion_id"], name: "index_mensajes_on_publicacion_id"
  end

  create_table "publicacions", charset: "utf8mb3", collation: "utf8_bin", force: :cascade do |t|
    t.string "titulo"
    t.text "contenido"
    t.bigint "blog1_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["blog1_id"], name: "index_publicacions_on_blog1_id"
  end

  add_foreign_key "mensajes", "publicacions"
  add_foreign_key "publicacions", "blog1s"
end
