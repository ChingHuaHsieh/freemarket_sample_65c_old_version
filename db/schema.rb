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

ActiveRecord::Schema.define(version: 20191223040018) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "ancestry"
    t.index ["ancestry"], name: "index_categories_on_ancestry", using: :btree
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",                       null: false
    t.string   "name",                          null: false
    t.text     "content",         limit: 65535
    t.integer  "category_id",                   null: false
    t.integer  "brand_id"
    t.integer  "goods_status",                  null: false
    t.integer  "delivery_charge",               null: false
    t.integer  "delivery_way",                  null: false
    t.integer  "from_prefecture",               null: false
    t.integer  "delivery_days",                 null: false
    t.integer  "selling_status",                null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["brand_id"], name: "index_products_on_brand_id", using: :btree
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
    t.index ["name"], name: "index_products_on_name", unique: true, using: :btree
    t.index ["user_id"], name: "index_products_on_user_id", using: :btree
  end

end
