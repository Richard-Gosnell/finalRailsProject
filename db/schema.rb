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

ActiveRecord::Schema.define(version: 2019_11_29_034800) do

  create_table "abouts", force: :cascade do |t|
    t.string "about_us_text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "authors", force: :cascade do |t|
    t.string "author_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "book_orders", force: :cascade do |t|
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "book_id"
    t.integer "order_id"
    t.index ["book_id"], name: "index_book_orders_on_book_id"
    t.index ["order_id"], name: "index_book_orders_on_order_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "book_name"
    t.integer "page_count"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "author_id"
    t.integer "genre_id"
    t.string "image"
    t.index ["author_id"], name: "index_books_on_author_id"
    t.index ["genre_id"], name: "index_books_on_genre_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "phone"
    t.string "email_address"
    t.string "address"
    t.string "city"
    t.string "postal_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "province_id"
    t.index ["province_id"], name: "index_contacts_on_province_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "postalcode"
    t.integer "province_id"
    t.integer "site_user_id"
    t.index ["province_id"], name: "index_customers_on_province_id"
    t.index ["site_user_id"], name: "index_customers_on_site_user_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "book_id"
    t.index ["book_id"], name: "index_genres_on_book_id"
  end

  create_table "orders", force: :cascade do |t|
    t.decimal "taxes"
    t.decimal "total_cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "completed_order"
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "province_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "taxes"
  end

  create_table "site_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "name"
    t.string "address"
    t.string "postal_code"
    t.integer "province_id"
    t.string "city"
    t.index ["email"], name: "index_site_users_on_email", unique: true
    t.index ["province_id"], name: "index_site_users_on_province_id"
    t.index ["reset_password_token"], name: "index_site_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_site_users_on_username", unique: true
  end

  add_foreign_key "book_orders", "books"
  add_foreign_key "book_orders", "orders"
  add_foreign_key "books", "authors"
  add_foreign_key "books", "genres"
  add_foreign_key "contacts", "provinces"
  add_foreign_key "customers", "provinces"
  add_foreign_key "customers", "site_users"
  add_foreign_key "genres", "books"
  add_foreign_key "orders", "customers"
  add_foreign_key "site_users", "provinces"
end
