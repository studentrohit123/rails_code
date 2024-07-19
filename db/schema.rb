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

ActiveRecord::Schema[7.1].define(version: 2024_07_19_102830) do
  create_table "account_histos", force: :cascade do |t|
    t.string "name"
    t.integer "account_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_account_histos_on_account_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.string "account_number"
    t.string "string"
    t.integer "supplier_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_accounts_on_supplier_id"
  end

  create_table "appoinments", force: :cascade do |t|
    t.string "name"
    t.string "string"
    t.integer "physician_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["physician_id"], name: "index_appoinments_on_physician_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.string "string"
    t.integer "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forums", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "numbers", force: :cascade do |t|
    t.string "contect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "numbers_phones", id: false, force: :cascade do |t|
    t.integer "phone_id", null: false
    t.integer "number_id", null: false
  end

  create_table "pattients", force: :cascade do |t|
    t.string "name"
    t.string "string"
    t.integer "appoinments_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appoinments_id"], name: "index_pattients_on_appoinments_id"
  end

  create_table "phones", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.string "name"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "poly_comments", force: :cascade do |t|
    t.text "context"
    t.string "commentable_type", null: false
    t.integer "commentable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentable_type", "commentable_id"], name: "index_poly_comments_on_commentable"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "account_histos", "accounts"
  add_foreign_key "accounts", "suppliers"
  add_foreign_key "appoinments", "physicians"
  add_foreign_key "books", "authors"
  add_foreign_key "pattients", "appoinments", column: "appoinments_id"
end
