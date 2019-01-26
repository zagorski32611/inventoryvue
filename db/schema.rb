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

ActiveRecord::Schema.define(version: 2019_01_26_042347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "company"
    t.string "phone_number"
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "part_number"
    t.string "sku"
    t.integer "quantity"
    t.string "vendor"
    t.integer "cost"
    t.integer "retail_price"
    t.integer "wholesale_price"
  end

  create_table "sales", force: :cascade do |t|
    t.string "price"
    t.string "sales_tax"
    t.bigint "customer_id"
    t.bigint "product_id"
    t.index ["customer_id"], name: "index_sales_on_customer_id"
    t.index ["product_id"], name: "index_sales_on_product_id"
  end

  add_foreign_key "sales", "customers"
  add_foreign_key "sales", "products"
end
