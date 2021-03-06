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

ActiveRecord::Schema.define(version: 20151006002656) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "articles", ["site_id"], name: "index_articles_on_site_id"

  create_table "blocks", force: :cascade do |t|
    t.string   "title"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "blocks", ["site_id"], name: "index_blocks_on_site_id"

  create_table "cells", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.integer  "block_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cells", ["block_id"], name: "index_cells_on_block_id"

  create_table "design_templates", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faqs", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "faqs", ["site_id"], name: "index_faqs_on_site_id"

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "items", force: :cascade do |t|
    t.integer  "page_id"
    t.string   "type"
    t.string   "title"
    t.text     "body"
    t.text     "movie"
    t.string   "image"
    t.string   "image_location"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "row_order"
  end

  add_index "items", ["page_id"], name: "index_items_on_page_id"

  create_table "maps", force: :cascade do |t|
    t.text     "body"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "maps", ["site_id"], name: "index_maps_on_site_id"

  create_table "members", force: :cascade do |t|
    t.string   "image"
    t.string   "name"
    t.text     "description"
    t.integer  "site_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "members", ["site_id"], name: "index_members_on_site_id"

  create_table "page_images", force: :cascade do |t|
    t.string   "title"
    t.string   "head_text"
    t.string   "image"
    t.string   "image_type"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "page_images", ["site_id"], name: "index_page_images_on_site_id"

  create_table "page_texts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "page_texts", ["page_id"], name: "index_page_texts_on_page_id"

  create_table "pages", force: :cascade do |t|
    t.string   "name"
    t.integer  "site_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "status",     default: false
  end

  add_index "pages", ["site_id"], name: "index_pages_on_site_id"

  create_table "services", force: :cascade do |t|
    t.string   "title"
    t.string   "head_text"
    t.string   "image"
    t.string   "image_type"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "services", ["site_id"], name: "index_services_on_site_id"

  create_table "site_templates", force: :cascade do |t|
    t.integer  "site_id"
    t.integer  "design_template_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "site_templates", ["design_template_id"], name: "index_site_templates_on_design_template_id"
  add_index "site_templates", ["site_id"], name: "index_site_templates_on_site_id"

  create_table "sites", force: :cascade do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "site_name"
    t.string   "facebook"
    t.string   "twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sites", ["confirmation_token"], name: "index_sites_on_confirmation_token", unique: true
  add_index "sites", ["email"], name: "index_sites_on_email", unique: true
  add_index "sites", ["reset_password_token"], name: "index_sites_on_reset_password_token", unique: true

  create_table "topimages", force: :cascade do |t|
    t.string   "image"
    t.string   "title"
    t.string   "head_text"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "topimages", ["site_id"], name: "index_topimages_on_site_id"

end
