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

ActiveRecord::Schema.define(version: 20180807154828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "adminpack"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "administrators", force: :cascade do |t|
    t.string "admin_username"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_administrators_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "comment_text"
    t.string "comment_title"
    t.bigint "user_id"
    t.bigint "document_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document_id"], name: "index_comments_on_document_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "course_types", force: :cascade do |t|
    t.string "course_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "document_favoris", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "document_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document_id"], name: "index_document_favoris_on_document_id"
    t.index ["user_id"], name: "index_document_favoris_on_user_id"
  end

  create_table "document_histories", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "document_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document_id"], name: "index_document_histories_on_document_id"
    t.index ["user_id"], name: "index_document_histories_on_user_id"
  end

  create_table "document_images", force: :cascade do |t|
    t.string "image_data"
    t.integer "image_order"
    t.bigint "document_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document_id"], name: "index_document_images_on_document_id"
  end

  create_table "documentimages", id: false, force: :cascade do |t|
    t.string "documentid", limit: 255, null: false
    t.integer "imageorder", null: false
    t.binary "image"
  end

  create_table "documentimagesurl", id: false, force: :cascade do |t|
    t.string "url", limit: 600, null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string "document_key"
    t.string "document_section"
    t.string "document_level"
    t.string "document_course"
    t.string "document_type"
    t.string "document_subject"
    t.string "document_year"
    t.string "document_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pdf_file_enonce_file_name"
    t.string "pdf_file_enonce_content_type"
    t.integer "pdf_file_enonce_file_size"
    t.datetime "pdf_file_enonce_updated_at"
    t.string "pdf_file_corrige_file_name"
    t.string "pdf_file_corrige_content_type"
    t.integer "pdf_file_corrige_file_size"
    t.datetime "pdf_file_corrige_updated_at"
    t.binary "enonce_data"
    t.binary "corrige_data"
    t.string "document_trimestre"
  end

  create_table "institutes", force: :cascade do |t|
    t.string "institute_name"
    t.string "institute_type"
    t.string "institute_other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "message_image"
    t.text "message_text"
    t.string "message_title"
    t.bigint "administrator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["administrator_id"], name: "index_messages_on_administrator_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "card_number"
    t.datetime "expiration_date"
    t.integer "cvv"
    t.datetime "payment_date"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "section_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "phone_number"
    t.bigint "cin_number"
    t.integer "school_year"
    t.string "city"
    t.bigint "institute_id"
    t.string "login_token"
    t.string "provider"
    t.string "uid"
    t.string "section"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer "unique_session_id"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["institute_id"], name: "index_users_on_institute_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "video_histories", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "video_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_video_histories_on_user_id"
    t.index ["video_id"], name: "index_video_histories_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string "video_name"
    t.string "video_key"
    t.string "video_category"
    t.string "video_tags"
    t.string "video_section"
    t.string "video_course"
    t.string "video_type"
    t.integer "video_year"
    t.string "video_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", id: :serial, force: :cascade do |t|
    t.string "votable_type"
    t.integer "votable_id"
    t.string "voter_type"
    t.integer "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
  end

  add_foreign_key "administrators", "users"
  add_foreign_key "comments", "documents"
  add_foreign_key "comments", "users"
  add_foreign_key "document_favoris", "documents"
  add_foreign_key "document_favoris", "users"
  add_foreign_key "document_histories", "documents"
  add_foreign_key "document_histories", "users"
  add_foreign_key "document_images", "documents"
  add_foreign_key "messages", "administrators"
  add_foreign_key "users", "institutes"
  add_foreign_key "video_histories", "users"
  add_foreign_key "video_histories", "videos"
end
