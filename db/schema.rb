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

ActiveRecord::Schema[7.1].define(version: 2024_07_12_104432) do
  create_table "Products_Students", id: false, force: :cascade do |t|
    t.integer "Product_id", null: false
    t.integer "Student_id", null: false
    t.string "[:name, :name]"
    t.string "[:string, :email]"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "part_number"
    t.integer "address"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id", null: false
    t.integer "age"
    t.index ["student_id"], name: "index_products_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "father_name"
    t.string "email"
    t.string "string"
    t.string "age"
    t.string "enrollement"
  end

  add_foreign_key "products", "students"
end
