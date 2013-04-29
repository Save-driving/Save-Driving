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

ActiveRecord::Schema.define(:version => 20130429164212) do

  create_table "ayudas", :force => true do |t|
    t.string   "glosario"
    t.string   "usos"
    t.string   "contactos"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "calificaciones", :force => true do |t|
    t.string   "calificacion"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "cargos", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ciudades", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "documentos", :force => true do |t|
    t.string   "sigla"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "especiales", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "programaciones", :force => true do |t|
    t.integer  "usuario_id"
    t.integer  "servicio_id"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "programaciones", ["servicio_id"], :name => "index_programaciones_on_servicio_id"
  add_index "programaciones", ["usuario_id"], :name => "index_programaciones_on_usuario_id"

  create_table "roles", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "servicios", :force => true do |t|
    t.string   "direccion_inicial"
    t.string   "direccion_final"
    t.integer  "especial_id"
    t.integer  "ciudad_id"
    t.integer  "calificacion_id"
    t.string   "observaciones"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "servicios", ["calificacion_id"], :name => "index_servicios_on_calificacion_id"
  add_index "servicios", ["ciudad_id"], :name => "index_servicios_on_ciudad_id"
  add_index "servicios", ["especial_id"], :name => "index_servicios_on_especial_id"

  create_table "usuarios", :force => true do |t|
    t.integer  "documento_id"
    t.string   "numero_doc"
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "direccion"
    t.integer  "ciudad_id"
    t.integer  "telefonos"
    t.string   "email"
    t.integer  "rol_id"
    t.integer  "cargo_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "usuarios", ["cargo_id"], :name => "index_usuarios_on_cargo_id"
  add_index "usuarios", ["ciudad_id"], :name => "index_usuarios_on_ciudad_id"
  add_index "usuarios", ["documento_id"], :name => "index_usuarios_on_documento_id"
  add_index "usuarios", ["rol_id"], :name => "index_usuarios_on_rol_id"

end
