require 'csv'

def migration_column_names(csv_file)
  csv_text = File.read(Rails.root.join('lib', 'seeds', "#{file}.csv"))
  csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
  cols = []
  csv.first.to_hash.keys.each do |k|
    cols.push(k.downcase.gsub("#{file}.", '')) if k
  end
  puts cols
end

def enforcement_action
  csv_text = File.read(Rails.root.join('lib', 'seeds', 'enforcement_action.csv'))
  csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
  csv.each do |row|
    a = EnforcementAction.new
    a.pwsid = row[0]
    a.enforcement_id = row[1]
    a.originator_code = row[2]
    a.enforcement_date = row[3]
    a.enforcement_action_type_code = row[4]
    a.enforcement_comment_text = row[5]
    a.save
    puts "#{a.id}: enforcement_action created ..."
    if a.id == @row_limit
      return
    end
  end
end

def geographic_area
  csv_text = File.read(Rails.root.join('lib', 'seeds', 'geographic_area.csv'))
  csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
  csv.each do |row|
    a = GeographicArea.new
    a.pwsid = row[0]
    a.geo_id = row[1]
    a.primacy_agency_code = row[2]
    a.epa_region = row[3]
    a.pws_activity_code = row[4]
    a.pws_type_code = row[5]
    a.tribal_code = row[6]
    a.state_served = row[7]
    a.ansi_entity_code = row[8]
    a.zip_code_served = row[9]
    a.city_served = row[10]
    a.area_type_code = row[11]
    a.county_served = row[12]
    a.save
    puts "#{a.id}: geographic_area created ..."
    if a.id == @row_limit
      return
    end
  end
end

def lcr_sample_result
  csv_text = File.read(Rails.root.join('lib', 'seeds', 'lcr_sample_result.csv'))
  csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
  csv.each do |row|
    a = LcrSampleResult.new
    a.pwsid = row[0]
    a.sample_id = row[1]
    a.primacy_agency_code = row[2]
    a.epa_region = row[3]
    a.sar_id = row[4]
    a.contaminant_code = row[5]
    a.result_sign_code = row[6]
    a.sample_measure = row[7]
    a.unit_of_measure = row[8]
    a.save
    puts "#{a.id}: lcr_sample_result created ..."
    if a.id == @row_limit 
      return
    end
  end
end

def lcr_sample
  csv_text = File.read(Rails.root.join('lib', 'seeds', 'lcr_sample.csv'))
  csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
  csv.each do |row|
    a = LcrSample.new
    a.sample_id = row[0]
    a.sampling_end_date = row[1]
    a.sampling_start_date = row[2]
    a.reconciliation_id = row[3]
    a.primacy_agency_code = row[4]
    a.epa_region = row[5]
    a.save
    puts "#{a.id}: lcr_sample created ..."
    if a.id == @row_limit 
      return
    end
  end
end

def service_area
  csv_text = File.read(Rails.root.join('lib', 'seeds', 'service_area.csv'))
  csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
  csv.each do |row|
    a = ServiceArea.new
    a.pwsid = row[0]
    a.primacy_agency_code = row[1]
    a.epa_region = row[2]
    a.pws_activity_code = row[3]
    a.pws_type_code = row[4]
    a.service_area_type_code = row[5]
    a.is_primary_service_area_code = row[6]
    a.save
    puts "#{a.id}: service_area created ..."
    if a.id == @row_limit 
      return
    end
  end
end

def treatment
  csv_text = File.read(Rails.root.join('lib', 'seeds', 'treatment.csv'))
  csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
  csv.each do |row|
    a = Treatment.new
    a.pwsid = row[0]
    a.facility_id = row[1]
    a.treatment_id = row[2]
    a.comments_text = row[3]
    a.treatment_objective_code = row[4]
    a.treatment_process_code = row[5]
    a.save
    puts "#{a.id}: treatment created ..."
    if a.id == @row_limit 
      return
    end
  end
end



def main
  enforcement_action
  geographic_area
  lcr_sample_result
  lcr_sample
  service_area
  treatment
end

@row_limit = 100

main




# create_table "violation_enf_assocs", force: :cascade do |t|
#   t.string "pwsid"
#   t.string "enforcement_id"
#   t.string "violation_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end

# create_table "violations", force: :cascade do |t|
#   t.string "pwsid"
#   t.string "violation_id"
#   t.string "facility_id"
#   t.string "population_served_count"
#   t.string "npm_candidate"
#   t.string "pws_activity_code"
#   t.string "pws_deactivation_date"
#   t.string "primary_source_code"
#   t.string "pop_cat_5_code"
#   t.string "primacy_agency_code"
#   t.string "epa_region"
#   t.string "pws_type_code"
#   t.string "violation_code"
#   t.string "violation_category_code"
#   t.string "is_health_based_ind"
#   t.string "contaminant_code"
#   t.string "compliance_status_code"
#   t.string "viol_measure"
#   t.string "unit_of_measure"
#   t.string "state_mcl"
#   t.string "is_major_viol_ind"
#   t.string "severity_ind_cnt"
#   t.string "compl_per_begin_date"
#   t.string "compl_per_end_date"
#   t.string "latest_enforcement_id"
#   t.string "rtc_enforcement_id"
#   t.string "rtc_date"
#   t.string "public_notification_tier"
#   t.string "originator_code"
#   t.string "sample_result_id"
#   t.string "corrective_action_id"
#   t.string "rule_code"
#   t.string "rule_group_code"
#   t.string "rule_family_code"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end

# create_table "water_system_facilities", force: :cascade do |t|
#   t.string "pwsid"
#   t.string "primacy_agency_code"
#   t.string "epa_region"
#   t.string "facility_id"
#   t.string "facility_name"
#   t.string "state_facility_id"
#   t.string "facility_activity_code"
#   t.string "facility_deactivation_date"
#   t.string "facility_type_code"
#   t.string "submission_status_code"
#   t.string "is_source_ind"
#   t.string "water_type_code"
#   t.string "availability_code"
#   t.string "seller_treatment_code"
#   t.string "seller_pwsid"
#   t.string "seller_pws_name"
#   t.string "filtration_status_code"
#   t.string "pws_activity_code"
#   t.string "pws_deactivation_date"
#   t.string "pws_type_code"
#   t.string "is_source_treated_ind"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end

# create_table "water_systems", force: :cascade do |t|
#   t.string "pwsid"
#   t.string "pws_name"
#   t.string "npm_candidate"
#   t.string "primacy_agency_code"
#   t.string "epa_region"
#   t.string "season_begin_date"
#   t.string "season_end_date"
#   t.string "pws_activity_code"
#   t.string "pws_deactivation_date"
#   t.string "pws_type_code"
#   t.string "dbpr_schedule_cat_code"
#   t.string "cds_id"
#   t.string "gw_sw_code"
#   t.string "lt2_schedule_cat_code"
#   t.string "owner_type_code"
#   t.string "population_served_count"
#   t.string "pop_cat_2_code"
#   t.string "pop_cat_3_code"
#   t.string "pop_cat_4_code"
#   t.string "pop_cat_5_code"
#   t.string "pop_cat_11_code"
#   t.string "primacy_type"
#   t.string "primary_source_code"
#   t.string "is_grant_eligible_ind"
#   t.string "is_wholesaler_ind"
#   t.string "is_school_or_daycare_ind"
#   t.string "service_connections_count"
#   t.string "submission_status_code"
#   t.string "org_name"
#   t.string "admin_name"
#   t.string "email_addr"
#   t.string "phone_number"
#   t.string "phone_ext_number"
#   t.string "fax_number"
#   t.string "alt_phone_number"
#   t.string "address_line1"
#   t.string "address_line2"
#   t.string "city_name"
#   t.string "zip_code"
#   t.string "country_code"
#   t.string "state_code"
#   t.string "source_water_protection_code"
#   t.string "source_protection_begin_date"
#   t.string "outstanding_performer"
#   t.string "outstanding_perform_begin_date"
#   t.string "cities_served"
#   t.string "counties_served"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
