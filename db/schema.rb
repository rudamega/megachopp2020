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

ActiveRecord::Schema.define(version: 2020_08_11_135628) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "banks", force: :cascade do |t|
    t.string "name"
    t.string "account_number"
    t.float "saldo_inicial", default: 0.0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cheques", force: :cascade do |t|
    t.string "name"
    t.string "nro_inicial"
    t.string "nro_final"
    t.bigint "bank_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bank_id"], name: "index_cheques_on_bank_id"
  end

  create_table "compro", force: :cascade do |t|
    t.string "comment"
    t.string "name"
    t.string "status", default: "no-conciliado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "compros", force: :cascade do |t|
    t.string "comment"
    t.string "name"
    t.string "status", default: "no-conciliado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nro"
    t.string "monto"
    t.string "creado_por"
    t.string "cargado_por"
    t.string "conciliado_por"
    t.string "forma"
  end

  create_table "extractos", force: :cascade do |t|
    t.string "name"
    t.bigint "bank_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bank_id"], name: "index_extractos_on_bank_id"
  end

  create_table "fijos", force: :cascade do |t|
    t.string "name"
    t.string "amount"
    t.string "status", default: ""
    t.bigint "month_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["month_id"], name: "index_fijos_on_month_id"
  end

  create_table "habitacions", force: :cascade do |t|
    t.string "bolsas", default: "no"
    t.string "jabon_en_polvo", default: "no"
    t.string "jabon_en_pan", default: "no"
    t.string "franela", default: "no"
    t.string "trapo", default: "no"
    t.string "latona", default: "no"
    t.string "escoba", default: "no"
    t.string "alcohol", default: "no"
    t.string "termo_transformador", default: "no"
    t.string "muda_sabana", default: "no"
    t.string "alzar_agua", default: "no"
    t.string "frazada", default: "no"
    t.string "papel_extra", default: "no"
    t.string "frigobar_limpio", default: "no"
    t.string "pasar_trapo_ventana", default: "no"
    t.string "pasar_trapo_cabecera", default: "no"
    t.string "toallas_cuerpo", default: "no"
    t.string "toalla_rostro", default: "no"
    t.string "toalla_piso", default: "no"
    t.string "muda_toalla", default: "no"
    t.string "cama_matrimonial", default: "no"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "porta_bidon", default: "no"
    t.string "detergente", default: "no"
    t.string "esponja", default: "no"
    t.string "palo_de_piso", default: "no"
    t.string "tasa", default: "no"
    t.string "baso", default: "no"
    t.string "azucar", default: "no"
    t.string "lavandina", default: "no"
  end

  create_table "hojas", force: :cascade do |t|
    t.integer "nro"
    t.bigint "cheque_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "monto"
    t.string "fecha_pago"
    t.string "aprobado", default: "no"
    t.string "compensado", default: "no"
    t.string "aprobado_por"
    t.string "description"
    t.string "compensado_por"
    t.index ["cheque_id"], name: "index_hojas_on_cheque_id"
  end

  create_table "items_imports", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "months", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "retiros", force: :cascade do |t|
    t.string "monto"
    t.string "forma"
    t.string "status"
    t.string "comprobante"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "obs"
    t.string "retirado_por"
    t.string "enviado_a"
  end

  create_table "transactions", force: :cascade do |t|
    t.date "date"
    t.string "comprobante"
    t.float "importe_credito", default: 0.0
    t.float "importe_debito", default: 0.0
    t.string "status", default: "no-conciliado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "extracto_id", null: false
    t.string "comment"
    t.string "movimiento"
    t.string "fecha"
    t.string "conciliado_por"
    t.index ["extracto_id"], name: "index_transactions_on_extracto_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "rol", default: "normal"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cheques", "banks"
  add_foreign_key "extractos", "banks"
  add_foreign_key "fijos", "months"
  add_foreign_key "hojas", "cheques"
  add_foreign_key "transactions", "extractos"
end
