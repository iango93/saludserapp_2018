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

ActiveRecord::Schema.define(version: 2018_09_17_010800) do

  create_table "accountnames", force: :cascade do |t|
    t.string "name"
    t.string "type_account"
    t.integer "address_id"
    t.integer "identification_id"
    t.integer "email_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_accountnames_on_address_id"
    t.index ["email_id"], name: "index_accountnames_on_email_id"
    t.index ["identification_id"], name: "index_accountnames_on_identification_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "address"
    t.string "neighborhood"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_addresses_on_city_id"
  end

  create_table "beneficiaries", force: :cascade do |t|
    t.string "first_name"
    t.string "second_name"
    t.string "lastname"
    t.string "second_surname"
    t.integer "customer_id"
    t.date "birthday"
    t.string "relationship"
    t.integer "identification_id"
    t.string "gender"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_beneficiaries_on_customer_id"
    t.index ["identification_id"], name: "index_beneficiaries_on_identification_id"
    t.index ["state_id"], name: "index_beneficiaries_on_state_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.text "description"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_categories_on_state_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_cities_on_department_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "legal_representative"
    t.bigint "cc_legal_representative"
    t.date "creation_date"
    t.string "economic_activity"
    t.integer "code_economic_activity"
    t.integer "email_id"
    t.integer "identification_id"
    t.integer "address_id"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_companies_on_address_id"
    t.index ["email_id"], name: "index_companies_on_email_id"
    t.index ["identification_id"], name: "index_companies_on_identification_id"
    t.index ["state_id"], name: "index_companies_on_state_id"
  end

  create_table "consecutives", force: :cascade do |t|
    t.string "suffix"
    t.integer "folio_company"
    t.integer "company_id"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_consecutives_on_company_id"
    t.index ["customer_id"], name: "index_consecutives_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.date "date_admission"
    t.string "first_name"
    t.string "second_name"
    t.string "lastname"
    t.string "second_surname"
    t.string "civil_status"
    t.string "gender"
    t.boolean "pregnancy"
    t.integer "gestation_weeks"
    t.string "current_work"
    t.integer "identification_id"
    t.integer "address_id"
    t.integer "email_id"
    t.integer "staff_id"
    t.date "birthdate"
    t.string "advertising_medium"
    t.integer "account_id"
    t.integer "company_id"
    t.boolean "arrival_card_ccf"
    t.boolean "arrival_card_arl"
    t.integer "ibc"
    t.integer "state_id"
    t.integer "entity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_customers_on_account_id"
    t.index ["address_id"], name: "index_customers_on_address_id"
    t.index ["company_id"], name: "index_customers_on_company_id"
    t.index ["email_id"], name: "index_customers_on_email_id"
    t.index ["entity_id"], name: "index_customers_on_entity_id"
    t.index ["identification_id"], name: "index_customers_on_identification_id"
    t.index ["staff_id"], name: "index_customers_on_staff_id"
    t.index ["state_id"], name: "index_customers_on_state_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "details", force: :cascade do |t|
    t.integer "price"
    t.integer "ibc"
    t.string "type_invoice"
    t.integer "quantity"
    t.integer "adjust"
    t.text "description"
    t.integer "entity_id"
    t.integer "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entity_id"], name: "index_details_on_entity_id"
    t.index ["invoice_id"], name: "index_details_on_invoice_id"
  end

  create_table "emails", force: :cascade do |t|
    t.string "email"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_emails_on_state_id"
  end

  create_table "entities", force: :cascade do |t|
    t.string "service"
    t.string "name_eps"
    t.string "name_afp"
    t.string "name_arl"
    t.string "name_ccf"
    t.decimal "level_arl"
    t.string "code"
    t.integer "percent"
    t.string "type"
    t.integer "category_id"
    t.integer "state_id"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_entities_on_category_id"
    t.index ["company_id"], name: "index_entities_on_company_id"
    t.index ["state_id"], name: "index_entities_on_state_id"
  end

  create_table "folios", force: :cascade do |t|
    t.bigint "folio"
    t.integer "headquarter_id"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_folios_on_customer_id"
    t.index ["headquarter_id"], name: "index_folios_on_headquarter_id"
  end

  create_table "headquarters", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.integer "company_id"
    t.integer "address_id"
    t.integer "email_id"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_headquarters_on_address_id"
    t.index ["company_id"], name: "index_headquarters_on_company_id"
    t.index ["email_id"], name: "index_headquarters_on_email_id"
    t.index ["state_id"], name: "index_headquarters_on_state_id"
  end

  create_table "identifications", force: :cascade do |t|
    t.string "type"
    t.bigint "number"
    t.integer "check_digit"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_identifications_on_state_id"
  end

  create_table "incidents", force: :cascade do |t|
    t.integer "num_incident"
    t.string "type_incident"
    t.string "affair"
    t.text "description"
    t.integer "customer_id"
    t.integer "company_id"
    t.integer "headquarter_id"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_incidents_on_company_id"
    t.index ["customer_id"], name: "index_incidents_on_customer_id"
    t.index ["headquarter_id"], name: "index_incidents_on_headquarter_id"
    t.index ["state_id"], name: "index_incidents_on_state_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "company_id"
    t.integer "headquarter_id"
    t.integer "payment_method_id"
    t.integer "staff_id"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_invoices_on_company_id"
    t.index ["customer_id"], name: "index_invoices_on_customer_id"
    t.index ["headquarter_id"], name: "index_invoices_on_headquarter_id"
    t.index ["payment_method_id"], name: "index_invoices_on_payment_method_id"
    t.index ["staff_id"], name: "index_invoices_on_staff_id"
    t.index ["state_id"], name: "index_invoices_on_state_id"
  end

  create_table "leads", force: :cascade do |t|
    t.string "first_name"
    t.string "second_name"
    t.string "lastname"
    t.string "second_suname"
    t.string "current_work"
    t.integer "email_id"
    t.string "advertising_medium"
    t.integer "address_id"
    t.boolean "active"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_leads_on_address_id"
    t.index ["email_id"], name: "index_leads_on_email_id"
  end

  create_table "log1s", force: :cascade do |t|
    t.text "data"
    t.integer "data_trans"
    t.string "user_hash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "log2s", force: :cascade do |t|
    t.text "data"
    t.integer "data_trans"
    t.string "user_hash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "number_accounts", force: :cascade do |t|
    t.string "bank"
    t.string "type_account"
    t.string "owner_account"
    t.integer "identification_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["identification_id"], name: "index_number_accounts_on_identification_id"
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string "name"
    t.string "other_detail"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_payment_methods_on_state_id"
  end

  create_table "phones", force: :cascade do |t|
    t.integer "indicative"
    t.integer "number"
    t.boolean "type_phone"
    t.integer "address_id"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_phones_on_address_id"
    t.index ["state_id"], name: "index_phones_on_state_id"
  end

  create_table "roles", force: :cascade do |t|
    t.integer "role_staff"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_roles_on_state_id"
  end

  create_table "settleds", force: :cascade do |t|
    t.string "eps"
    t.string "ccf"
    t.string "afp"
    t.string "arl"
    t.integer "customer_id"
    t.integer "company_id"
    t.string "online_contribution"
    t.integer "online_contributioin_number"
    t.string "ccm"
    t.string "rut"
    t.string "bank_certification"
    t.integer "headquarter_id"
    t.integer "identification_id"
    t.string "personal_document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_settleds_on_company_id"
    t.index ["customer_id"], name: "index_settleds_on_customer_id"
    t.index ["headquarter_id"], name: "index_settleds_on_headquarter_id"
    t.index ["identification_id"], name: "index_settleds_on_identification_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "first_name"
    t.string "lastname"
    t.string "username"
    t.string "password_digest"
    t.integer "role_id"
    t.date "birthdate"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_staffs_on_role_id"
    t.index ["state_id"], name: "index_staffs_on_state_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "state_"
    t.integer "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
