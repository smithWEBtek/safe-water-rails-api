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

ActiveRecord::Schema.define(version: 2019_06_26_020714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "enforcement_actions", force: :cascade do |t|
    t.string "pwsid"
    t.string "enforcement_id"
    t.string "originator_code"
    t.string "enforcement_date"
    t.string "enforcement_action_type_code"
    t.text "enforcement_comment_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "geographic_areas", force: :cascade do |t|
    t.string "pwsid"
    t.string "geo_id"
    t.string "primacy_agency_code"
    t.string "epa_region"
    t.string "pws_activity_code"
    t.string "pws_type_code"
    t.string "tribal_code"
    t.string "state_served"
    t.string "ansi_entity_code"
    t.string "zip_code_served"
    t.string "city_served"
    t.string "area_type_code"
    t.string "county_served"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lcr_sample_results", force: :cascade do |t|
    t.string "pwsid"
    t.string "sample_id"
    t.string "primacy_agency_code"
    t.string "epa_region"
    t.string "sar_id"
    t.string "contaminant_code"
    t.string "result_sign_code"
    t.string "sample_measure"
    t.string "unit_of_measure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lcr_samples", force: :cascade do |t|
    t.string "pwsid"
    t.string "sample_id"
    t.string "sampling_end_date"
    t.string "sampling_start_date"
    t.string "reconciliation_id"
    t.string "primacy_agency_code"
    t.string "epa_region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_areas", force: :cascade do |t|
    t.string "pwsid"
    t.string "primacy_agency_code"
    t.string "epa_region"
    t.string "pws_activity_code"
    t.string "pws_type_code"
    t.string "service_area_type_code"
    t.string "is_primary_service_area_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treatments", force: :cascade do |t|
    t.string "pwsid"
    t.string "facility_id"
    t.string "treatment_id"
    t.string "comments_text"
    t.string "treatment_objective_code"
    t.string "treatment_process_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "violation_enf_assocs", force: :cascade do |t|
    t.string "pwsid"
    t.string "enforcement_id"
    t.string "violation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "violations", force: :cascade do |t|
    t.string "pwsid"
    t.string "violation_id"
    t.string "facility_id"
    t.string "population_served_count"
    t.string "npm_candidate"
    t.string "pws_activity_code"
    t.string "pws_deactivation_date"
    t.string "primary_source_code"
    t.string "pop_cat_5_code"
    t.string "primacy_agency_code"
    t.string "epa_region"
    t.string "pws_type_code"
    t.string "violation_code"
    t.string "violation_category_code"
    t.string "is_health_based_ind"
    t.string "contaminant_code"
    t.string "compliance_status_code"
    t.string "viol_measure"
    t.string "unit_of_measure"
    t.string "state_mcl"
    t.string "is_major_viol_ind"
    t.string "severity_ind_cnt"
    t.string "compl_per_begin_date"
    t.string "compl_per_end_date"
    t.string "latest_enforcement_id"
    t.string "rtc_enforcement_id"
    t.string "rtc_date"
    t.string "public_notification_tier"
    t.string "originator_code"
    t.string "sample_result_id"
    t.string "corrective_action_id"
    t.string "rule_code"
    t.string "rule_group_code"
    t.string "rule_family_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "water_system_facilities", force: :cascade do |t|
    t.string "pwsid"
    t.string "primacy_agency_code"
    t.string "epa_region"
    t.string "facility_id"
    t.string "facility_name"
    t.string "state_facility_id"
    t.string "facility_activity_code"
    t.string "facility_deactivation_date"
    t.string "facility_type_code"
    t.string "submission_status_code"
    t.string "is_source_ind"
    t.string "water_type_code"
    t.string "availability_code"
    t.string "seller_treatment_code"
    t.string "seller_pwsid"
    t.string "seller_pws_name"
    t.string "filtration_status_code"
    t.string "pws_activity_code"
    t.string "pws_deactivation_date"
    t.string "pws_type_code"
    t.string "is_source_treated_ind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "water_systems", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
