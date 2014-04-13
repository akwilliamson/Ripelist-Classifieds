ActiveRecord::Schema.define(version: 20140412204055) do

  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string "name"
  end

  create_table "listings", force: true do |t|
    t.string   "name"
    t.decimal  "price"
    t.string   "city"
    t.text     "description"
    t.string   "photo1_file_name"
    t.string   "photo1_content_type"
    t.integer  "photo1_file_size"
    t.datetime "photo1_updated_at"
    t.string   "photo2_file_name"
    t.string   "photo2_content_type"
    t.integer  "photo2_file_size"
    t.datetime "photo2_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "category_id"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.integer  "phone"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
end
