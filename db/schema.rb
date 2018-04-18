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

ActiveRecord::Schema.define(version: 20180417143155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dataset", id: false, force: :cascade do |t|
    t.integer "age"
    t.text "job"
    t.text "marital"
    t.text "education"
    t.text "default"
    t.text "housing"
    t.text "loan"
    t.text "contact"
    t.text "month"
    t.text "day_of_week"
    t.integer "duration"
    t.integer "campaign"
    t.integer "pdays"
    t.integer "previous"
    t.text "poutcome"
    t.float "emp.var.rate"
    t.float "cons.price.idx"
    t.float "cons.conf.idx"
    t.float "euribor3m"
    t.integer "nr.employed"
    t.text "y"
  end

  create_table "datasets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logistic", id: false, force: :cascade do |t|
    t.integer "age"
    t.text "job"
    t.text "marital"
    t.text "education"
    t.text "default"
    t.text "housing"
    t.text "loan"
    t.text "contact"
    t.text "month"
    t.text "day_of_week"
    t.integer "campaign"
    t.integer "pdays"
    t.integer "previous"
    t.text "poutcome"
    t.float "emp_var_rate"
    t.float "cons_price_idx"
    t.float "cons_conf_idx"
    t.float "euribor3m"
    t.integer "nr_employed"
    t.text "y"
    t.float "confidence_no"
    t.float "confidence_yes"
    t.text "prediction_y"
  end

  create_table "logistics", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "queryobjs", force: :cascade do |t|
    t.float "lower_range"
    t.float "upper_range"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
