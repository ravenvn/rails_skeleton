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

ActiveRecord::Schema.define(version: 20171226124120) do

  create_table "directions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "name", default: "", null: false
    t.string "slug", default: "", null: false
  end

  create_table "district_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "name", null: false
    t.string "slug", null: false
  end

  create_table "districts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "name",        null: false
    t.string  "slug",        null: false
    t.integer "type_id"
    t.integer "province_id"
    t.index ["province_id"], name: "index_districts_on_province_id", using: :btree
    t.index ["type_id"], name: "index_districts_on_type_id", using: :btree
  end

  create_table "market_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "name", null: false
    t.string "slug", null: false
  end

  create_table "properties", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "title",                                                 null: false
    t.string   "slug",                                                  null: false
    t.string   "address"
    t.text     "description",    limit: 65535
    t.string   "avatar"
    t.decimal  "square",                       precision: 10, scale: 2
    t.decimal  "price",                        precision: 10, scale: 2
    t.decimal  "unit_price",                   precision: 10, scale: 2
    t.string   "unit"
    t.integer  "beds"
    t.integer  "toilet"
    t.decimal  "floors",                       precision: 10, scale: 2
    t.decimal  "facade",                       precision: 10, scale: 2
    t.decimal  "frontline",                    precision: 10, scale: 2
    t.string   "owner_name"
    t.string   "owner_phone"
    t.string   "owner_phone2"
    t.boolean  "status"
    t.boolean  "approved"
    t.integer  "market_type_id"
    t.integer  "type_id"
    t.integer  "district_id"
    t.integer  "ward_id"
    t.integer  "street_id"
    t.integer  "direction_id"
    t.integer  "author_id"
    t.decimal  "longtitude",                   precision: 10, scale: 6
    t.decimal  "latitude",                     precision: 10, scale: 6
    t.string   "original_link"
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
    t.index ["author_id"], name: "index_properties_on_author_id", using: :btree
    t.index ["direction_id"], name: "index_properties_on_direction_id", using: :btree
    t.index ["district_id", "slug"], name: "by_district_slug", unique: true, using: :btree
    t.index ["district_id"], name: "index_properties_on_district_id", using: :btree
    t.index ["market_type_id"], name: "index_properties_on_market_type_id", using: :btree
    t.index ["street_id"], name: "index_properties_on_street_id", using: :btree
    t.index ["type_id"], name: "index_properties_on_type_id", using: :btree
    t.index ["ward_id"], name: "index_properties_on_ward_id", using: :btree
  end

  create_table "property_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",        null: false
    t.integer  "property_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["property_id"], name: "index_property_images_on_property_id", using: :btree
  end

  create_table "property_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "name", default: "", null: false
    t.string "slug", default: "", null: false
  end

  create_table "provinces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "name", null: false
    t.string "slug", null: false
  end

  create_table "street_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "name", null: false
    t.string "slug", null: false
  end

  create_table "streets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "name",        null: false
    t.string  "slug",        null: false
    t.integer "type_id"
    t.integer "district_id"
    t.index ["district_id"], name: "index_streets_on_district_id", using: :btree
    t.index ["type_id"], name: "index_streets_on_type_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "ward_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "name", null: false
    t.string "slug", null: false
  end

  create_table "wards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "name",        null: false
    t.string  "slug",        null: false
    t.integer "type_id"
    t.integer "district_id"
    t.index ["district_id"], name: "index_wards_on_district_id", using: :btree
    t.index ["type_id"], name: "index_wards_on_type_id", using: :btree
  end

  add_foreign_key "districts", "district_types", column: "type_id"
  add_foreign_key "properties", "property_types", column: "type_id"
  add_foreign_key "properties", "users", column: "author_id"
  add_foreign_key "streets", "street_types", column: "type_id"
  add_foreign_key "wards", "ward_types", column: "type_id"
end
