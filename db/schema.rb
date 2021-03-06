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

ActiveRecord::Schema.define(version: 2021_07_20_004659) do

  create_table "contacts", force: :cascade do |t|
    t.integer "PropertyInformation_id", null: false
    t.string "name"
    t.integer "phone_number"
    t.string "website"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["PropertyInformation_id"], name: "index_contacts_on_PropertyInformation_id"
  end

  create_table "corporate_informations", force: :cascade do |t|
    t.string "rfc"
    t.string "social_media_tw"
    t.string "social_media_fb"
    t.string "social_media_inst"
    t.string "social_media_link"
    t.string "social_media_web"
    t.integer "Corporate_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Corporate_id"], name: "index_corporate_informations_on_Corporate_id"
  end

  create_table "corporates", force: :cascade do |t|
    t.string "name"
    t.string "english_name"
    t.string "social_type"
    t.string "address"
    t.string "postal_code"
    t.string "colony"
    t.string "state"
    t.string "municipality"
    t.integer "cel"
    t.decimal "anual_invetsment"
    t.decimal "previus_anual_inv"
    t.decimal "next_anual_inv"
    t.datetime "downt_date"
    t.integer "corporate_type"
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "maps", force: :cascade do |t|
    t.string "name"
    t.string "lat"
    t.string "lng"
    t.text "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.integer "UserRolPermission_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["UserRolPermission_id"], name: "index_permissions_on_UserRolPermission_id"
  end

  create_table "properties", force: :cascade do |t|
    t.integer "Corporate_id", null: false
    t.integer "property_catalog_id"
    t.integer "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Corporate_id"], name: "index_properties_on_Corporate_id"
  end

  create_table "property_informations", force: :cascade do |t|
    t.integer "Property_id", null: false
    t.string "name"
    t.string "type"
    t.integer "superficie"
    t.string "address"
    t.string "english_name"
    t.string "park_property"
    t.string "region"
    t.string "market"
    t.string "industry"
    t.integer "suprficie_total"
    t.integer "superficie_urbanizada"
    t.integer "superficie_disponible"
    t.string "inicio_de_operaciones"
    t.integer "number_employe"
    t.text "practices_recognition"
    t.text "infrastructure"
    t.integer "navy_number"
    t.text "message"
    t.integer "postal_code"
    t.string "colony"
    t.string "municipality"
    t.string "state"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Property_id"], name: "index_property_informations_on_Property_id"
  end

  create_table "property_users", force: :cascade do |t|
    t.integer "User_id", null: false
    t.integer "industrial_park_id"
    t.integer "type_property"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["User_id"], name: "index_property_users_on_User_id"
  end

  create_table "status_disponibilities", force: :cascade do |t|
    t.integer "PropertyInformation_id", null: false
    t.boolean "status_property"
    t.decimal "average_price"
    t.integer "use"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["PropertyInformation_id"], name: "index_status_disponibilities_on_PropertyInformation_id"
  end

  create_table "tenant_histories", force: :cascade do |t|
    t.integer "Property_id", null: false
    t.integer "tenant_user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Property_id"], name: "index_tenant_histories_on_Property_id"
  end

  create_table "tenant_users", force: :cascade do |t|
    t.string "property"
    t.string "name_bussines"
    t.string "country"
    t.string "product_badge"
    t.integer "ID_SCIAN"
    t.integer "ID_DENUE"
    t.integer "antiquity"
    t.integer "superficie"
    t.integer "TenantHistory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["TenantHistory_id"], name: "index_tenant_users_on_TenantHistory_id"
  end

  create_table "user_changes", force: :cascade do |t|
    t.text "previews_value"
    t.text "next_value"
    t.text "message"
    t.string "email"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_changes_on_user_id"
  end

  create_table "user_informations", force: :cascade do |t|
    t.integer "user_id"
    t.string "full_name"
    t.string "last_name"
    t.string "address"
    t.string "state"
    t.string "office_address"
    t.string "charge"
    t.datetime "date_of_birth"
    t.string "phone_office"
    t.integer "cel"
    t.integer "corporate_id"
    t.boolean "status"
    t.string "municipality"
    t.string "colony"
    t.integer "postal_code_number"
    t.integer "user_type_permision_id"
    t.integer "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["corporate_id"], name: "index_user_informations_on_corporate_id"
    t.index ["user_id"], name: "index_user_informations_on_user_id"
    t.index ["user_type_permision_id"], name: "index_user_informations_on_user_type_permision_id"
  end

  create_table "user_role_permissions", force: :cascade do |t|
    t.integer "permission_id"
    t.boolean "read"
    t.boolean "write"
    t.integer "UserRol_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["UserRol_id"], name: "index_user_role_permissions_on_UserRol_id"
  end

  create_table "user_rols", force: :cascade do |t|
    t.string "name"
    t.integer "children_id"
    t.integer "parent_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "authentication_token", limit: 30
    t.integer "user_type"
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "contacts", "PropertyInformations"
  add_foreign_key "corporate_informations", "Corporates"
  add_foreign_key "permissions", "UserRolPermissions"
  add_foreign_key "properties", "Corporates"
  add_foreign_key "property_informations", "Properties"
  add_foreign_key "property_users", "Users"
  add_foreign_key "status_disponibilities", "PropertyInformations"
  add_foreign_key "tenant_histories", "Properties"
  add_foreign_key "tenant_users", "TenantHistories"
  add_foreign_key "user_changes", "users"
  add_foreign_key "user_informations", "corporates"
  add_foreign_key "user_informations", "user_type_permisions"
  add_foreign_key "user_informations", "users"
  add_foreign_key "user_role_permissions", "UserRols"
end
