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

ActiveRecord::Schema.define(version: 20150704164323) do

  create_table "clubs", force: true do |t|
    t.string   "nombre"
    t.string   "apodo"
    t.string   "imagen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipos", force: true do |t|
    t.string   "nombre"
    t.string   "imagen"
    t.integer  "participante_id"
    t.integer  "tactica_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "equipos", ["participante_id"], name: "index_equipos_on_participante_id", using: :btree
  add_index "equipos", ["tactica_id"], name: "index_equipos_on_tactica_id", using: :btree

  create_table "fecha_torneos", force: true do |t|
    t.integer  "fecha_id"
    t.integer  "torneo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fecha_torneos", ["fecha_id"], name: "index_fecha_torneos_on_fecha_id", using: :btree
  add_index "fecha_torneos", ["torneo_id"], name: "index_fecha_torneos_on_torneo_id", using: :btree

  create_table "fechas", force: true do |t|
    t.string   "numero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jugador_equipo_fecha_torneos", force: true do |t|
    t.integer  "jugador_equipo_id"
    t.integer  "fecha_torneo_id"
    t.boolean  "capitan"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jugador_equipo_fecha_torneos", ["fecha_torneo_id"], name: "index_jugador_equipo_fecha_torneos_on_fecha_torneo_id", using: :btree
  add_index "jugador_equipo_fecha_torneos", ["jugador_equipo_id"], name: "index_jugador_equipo_fecha_torneos_on_jugador_equipo_id", using: :btree

  create_table "jugador_equipos", force: true do |t|
    t.integer  "jugador_id"
    t.integer  "equipo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jugador_equipos", ["equipo_id"], name: "index_jugador_equipos_on_equipo_id", using: :btree
  add_index "jugador_equipos", ["jugador_id"], name: "index_jugador_equipos_on_jugador_id", using: :btree

  create_table "jugador_fecha_torneos", force: true do |t|
    t.integer  "jugador_id"
    t.integer  "fecha_torneo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jugador_fecha_torneos", ["fecha_torneo_id"], name: "index_jugador_fecha_torneos_on_fecha_torneo_id", using: :btree
  add_index "jugador_fecha_torneos", ["jugador_id"], name: "index_jugador_fecha_torneos_on_jugador_id", using: :btree

  create_table "jugadors", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "apodo"
    t.date     "fecha_nacimiento"
    t.string   "imagen"
    t.integer  "club_id"
    t.integer  "posicion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jugadors", ["club_id"], name: "index_jugadors_on_club_id", using: :btree
  add_index "jugadors", ["posicion_id"], name: "index_jugadors_on_posicion_id", using: :btree

  create_table "participantes", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "apodo"
    t.string   "imagen"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "participantes", ["user_id"], name: "index_participantes_on_user_id", using: :btree

  create_table "posicions", force: true do |t|
    t.string   "nombre"
    t.string   "imagen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tacticas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "torneos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "persmission_level"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "valor_puntajes", force: true do |t|
    t.integer  "doble_amarilla"
    t.integer  "roja_directa"
    t.integer  "amarilla"
    t.integer  "figura"
    t.integer  "penal_errado"
    t.integer  "gol_penal"
    t.integer  "gol"
    t.integer  "penal_atajado"
    t.boolean  "valla_invicta"
    t.boolean  "chenemigo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
