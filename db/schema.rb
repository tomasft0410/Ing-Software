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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2020_12_11_155917) do

=======
ActiveRecord::Schema.define(version: 20_201_122_161_316) do
>>>>>>> master
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "carrete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carretes", force: :cascade do |t|
    t.string "direccion"
    t.integer "costo_total"
    t.string "estado_busqueda"
    t.string "imagen"
    t.text "descripcion"
    t.string "titulo"
    t.integer "max_asistentes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "comuna_id"
    t.date "fecha"
    t.date "fecha_limite"
    t.integer "dinero_recaudado"
  end

  create_table "comentario_carretes", force: :cascade do |t|
    t.integer "carrete_id"
    t.integer "user_id"
    t.string "contenido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.string "servicio_id"
    t.string "user_id"
    t.string "contenido"
    t.datetime "fecha_hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comunas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contratos", force: :cascade do |t|
    t.integer "carrete_id"
    t.integer "servicio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favoritos", force: :cascade do |t|
    t.integer "user_id"
    t.integer "carrete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oferts", force: :cascade do |t|
    t.integer "bid"
    t.integer "carrete_id"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operates", force: :cascade do |t|
    t.integer "id_servicio"
    t.integer "id_lugar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servicios", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.integer "max_capacidad"
    t.string "imagen"
    t.integer "precio"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tipo"
    t.integer "edad"
    t.integer "telefono"
    t.integer "dinero"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "valoracion_carretes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "puntuacion"
    t.integer "carrete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "valoracion_servicios", force: :cascade do |t|
    t.integer "user_id"
    t.integer "puntuacion"
    t.integer "servicio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
