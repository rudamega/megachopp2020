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

ActiveRecord::Schema.define(version: 2020_07_16_182359) do

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
  end

  create_table "extractos", force: :cascade do |t|
    t.string "name"
    t.bigint "bank_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bank_id"], name: "index_extractos_on_bank_id"
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
  add_foreign_key "hojas", "cheques"
  add_foreign_key "transactions", "extractos"
end
