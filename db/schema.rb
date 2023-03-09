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

ActiveRecord::Schema[7.0].define(version: 2023_03_09_095947) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidats", force: :cascade do |t|
    t.string "photo"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "partie"
<<<<<<< HEAD
=======
    t.text "programm"
>>>>>>> f9f747f83af73364b05ab0f2f682a540561e5d71
    t.integer "compteur"
  end

  create_table "questionnaires", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "candidat_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reponse1"
    t.string "reponse2"
    t.string "reponse3"
    t.string "reponse4"
    t.string "reponse5"
    t.string "reponse6"
    t.string "reponse7"
    t.string "reponse8"
    t.string "reponse9"
    t.string "reponse10"
    t.string "reponse11"
    t.string "reponse12"
    t.string "reponse13"
    t.string "reponse14"
    t.string "reponse15"
    t.string "reponse16"
    t.string "reponse17"
    t.string "reponse18"
    t.string "reponse19"
    t.string "reponse20"
    t.index ["candidat_id"], name: "index_questionnaires_on_candidat_id"
    t.index ["user_id"], name: "index_questionnaires_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "questionnaires", "candidats"
  add_foreign_key "questionnaires", "users"
end
