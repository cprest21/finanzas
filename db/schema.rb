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

ActiveRecord::Schema.define(version: 20140417140207) do

  create_table "account_collaborators", force: true do |t|
    t.integer  "account_id"
    t.integer  "user_id"
    t.integer  "permission_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "account_collaborators", ["account_id"], name: "index_account_collaborators_on_account_id"
  add_index "account_collaborators", ["user_id"], name: "index_account_collaborators_on_user_id"

  create_table "account_users", force: true do |t|
    t.integer  "account_id"
    t.integer  "user_id"
    t.integer  "permission_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "account_users", ["account_id"], name: "index_account_users_on_account_id"
  add_index "account_users", ["user_id"], name: "index_account_users_on_user_id"

  create_table "accounts", force: true do |t|
    t.string   "title"
    t.string   "details"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["owner_id"], name: "index_accounts_on_owner_id"

  create_table "addresses", force: true do |t|
    t.integer  "locality_id"
    t.string   "street"
    t.string   "number"
    t.string   "floor"
    t.string   "department"
    t.string   "neighborhood"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["locality_id"], name: "index_addresses_on_locality_id"

  create_table "articles", force: true do |t|
    t.integer  "category_id"
    t.integer  "brand_id"
    t.string   "name"
    t.string   "details"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "income"
  end

  add_index "articles", ["brand_id"], name: "index_articles_on_brand_id"
  add_index "articles", ["category_id"], name: "index_articles_on_category_id"

  create_table "brands", force: true do |t|
    t.integer  "company_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "brands", ["company_id"], name: "index_brands_on_company_id"

  create_table "budget_categories", force: true do |t|
    t.integer  "budget_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "budget_categories", ["budget_id"], name: "index_budget_categories_on_budget_id"

  create_table "budgets", force: true do |t|
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["category_id"], name: "index_categories_on_category_id"

  create_table "companies", force: true do |t|
    t.integer  "address_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["address_id"], name: "index_companies_on_address_id"

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "localities", force: true do |t|
    t.integer  "province_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "localities", ["province_id"], name: "index_localities_on_province_id"

  create_table "operation_items", force: true do |t|
    t.integer  "budget_category_id"
    t.integer  "article_id"
    t.integer  "operation_id"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "income"
    t.string   "title"
  end

  create_table "operation_types", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operations", force: true do |t|
    t.integer  "operation_type_id"
    t.integer  "store_id"
    t.string   "title"
    t.integer  "account_id"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

  create_table "provinces", force: true do |t|
    t.integer  "country_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "provinces", ["country_id"], name: "index_provinces_on_country_id"

  create_table "stores", force: true do |t|
    t.integer  "address_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stores", ["address_id"], name: "index_stores_on_address_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts"
    t.string   "unlock_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
