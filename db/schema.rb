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

ActiveRecord::Schema.define(version: 20180417133054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "confidence_helper", id: false, force: :cascade do |t|
    t.float "confidence_no"
    t.integer "user_count"
  end

  create_table "decision_tree", id: false, force: :cascade do |t|
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

  create_table "decision_trees", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deep_learning", id: false, force: :cascade do |t|
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

  create_table "deep_learnings", force: :cascade do |t|
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

  create_table "svm", id: false, force: :cascade do |t|
    t.integer "job = housemaid"
    t.integer "job = services"
    t.integer "job = admin."
    t.integer "job = blue-collar"
    t.integer "job = technician"
    t.integer "job = retired"
    t.integer "job = management"
    t.integer "job = unemployed"
    t.integer "job = self-employed"
    t.integer "job = unknown"
    t.integer "job = entrepreneur"
    t.integer "job = student"
    t.integer "marital = married"
    t.integer "marital = single"
    t.integer "marital = divorced"
    t.integer "marital = unknown"
    t.integer "education = basic.4y"
    t.integer "education = high.school"
    t.integer "education = basic.6y"
    t.integer "education = basic.9y"
    t.integer "education = professional.course"
    t.integer "education = unknown"
    t.integer "education = university.degree"
    t.integer "education = illiterate"
    t.integer "default = no"
    t.integer "default = unknown"
    t.integer "default = yes"
    t.integer "housing = no"
    t.integer "housing = yes"
    t.integer "housing = unknown"
    t.integer "loan = no"
    t.integer "loan = yes"
    t.integer "loan = unknown"
    t.integer "contact = telephone"
    t.integer "contact = cellular"
    t.integer "month = may"
    t.integer "month = jun"
    t.integer "month = jul"
    t.integer "month = aug"
    t.integer "month = oct"
    t.integer "month = nov"
    t.integer "month = dec"
    t.integer "month = mar"
    t.integer "month = apr"
    t.integer "month = sep"
    t.integer "day_of_week = mon"
    t.integer "day_of_week = tue"
    t.integer "day_of_week = wed"
    t.integer "day_of_week = thu"
    t.integer "day_of_week = fri"
    t.integer "poutcome = nonexistent"
    t.integer "poutcome = failure"
    t.integer "poutcome = success"
    t.integer "age"
    t.integer "campaign"
    t.integer "pdays"
    t.integer "previous"
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

  create_table "svms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_performance_deep_learning", id: false, force: :cascade do |t|
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

  create_table "test_performance_svm", id: false, force: :cascade do |t|
    t.integer "job = housemaid"
    t.integer "job = services"
    t.integer "job = admin."
    t.integer "job = blue-collar"
    t.integer "job = technician"
    t.integer "job = retired"
    t.integer "job = management"
    t.integer "job = unemployed"
    t.integer "job = self-employed"
    t.integer "job = unknown"
    t.integer "job = entrepreneur"
    t.integer "job = student"
    t.integer "marital = married"
    t.integer "marital = single"
    t.integer "marital = divorced"
    t.integer "marital = unknown"
    t.integer "education = basic.4y"
    t.integer "education = high.school"
    t.integer "education = basic.6y"
    t.integer "education = basic.9y"
    t.integer "education = professional.course"
    t.integer "education = unknown"
    t.integer "education = university.degree"
    t.integer "education = illiterate"
    t.integer "default = no"
    t.integer "default = unknown"
    t.integer "default = yes"
    t.integer "housing = no"
    t.integer "housing = yes"
    t.integer "housing = unknown"
    t.integer "loan = no"
    t.integer "loan = yes"
    t.integer "loan = unknown"
    t.integer "contact = telephone"
    t.integer "contact = cellular"
    t.integer "month = may"
    t.integer "month = jun"
    t.integer "month = jul"
    t.integer "month = aug"
    t.integer "month = oct"
    t.integer "month = nov"
    t.integer "month = dec"
    t.integer "month = mar"
    t.integer "month = apr"
    t.integer "month = sep"
    t.integer "day_of_week = mon"
    t.integer "day_of_week = tue"
    t.integer "day_of_week = wed"
    t.integer "day_of_week = thu"
    t.integer "day_of_week = fri"
    t.integer "poutcome = nonexistent"
    t.integer "poutcome = failure"
    t.integer "poutcome = success"
    t.integer "age"
    t.integer "campaign"
    t.integer "pdays"
    t.integer "previous"
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
