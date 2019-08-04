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

def violation_enf_assoc
  csv_text = File.read(Rails.root.join('lib', 'seeds', 'violation_enf_assoc.csv'))
  csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
  csv.each do |row|
    a = ViolationEnfAssoc.new
    a.pwsid = row[0]
    a.enforcement_id = row[1]
    a.violation_id = row[2]
    a.save
    puts "#{a.id}: violation_enf_assoc created ..."
    if a.id == @row_limit
      return
    end
  end
end

def violation
  csv_text = File.read(Rails.root.join('lib', 'seeds', 'violation.csv'))
  csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
  csv.each do |row|
    a = Violation.new
    a.pwsid = row[0]
    a.violation_id = row[1]
    a.facility_id = row[2]
    a.population_served_count = row[3]
    a.npm_candidate = row[4]
    a.pws_activity_code = row[5]
    a.pws_deactivation_date = row[6]
    a.primary_source_code = row[7]
    a.pop_cat_5_code = row[8]
    a.primacy_agency_code = row[9]
    a.epa_region = row[10]
    a.pws_type_code = row[11]
    a.violation_code = row[12]
    a.violation_category_code = row[13]
    a.is_health_based_ind = row[14]
    a.contaminant_code = row[15]
    a.compliance_status_code = row[16]
    a.viol_measure = row[17]
    a.unit_of_measure = row[18]
    a.state_mcl = row[19]
    a.is_major_viol_ind = row[20]
    a.severity_ind_cnt = row[0]
    a.compl_per_begin_date = row[21]
    a.compl_per_end_date = row[22]
    a.latest_enforcement_id = row[23]
    a.rtc_enforcement_id = row[24]
    a.rtc_date = row[25]
    a.public_notification_tier = row[26]
    a.originator_code = row[27]
    a.sample_result_id = row[28]
    a.corrective_action_id = row[29]
    a.rule_code = row[30]
    a.rule_group_code = row[31]
    a.rule_family_code = row[32]
    a.save
    puts "#{a.id}: violation created ..."
    if a.id == @row_limit
      return
    end
  end
end

def water_system_facility
  csv_text = File.read(Rails.root.join('lib', 'seeds', 'water_system_facility.csv'))
  csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
  csv.each do |row|
    a = WaterSystemFacility.new
    a.pwsid = row[0]
    a.primacy_agency_code = row[1]
    a.epa_region = row[2]
    a.facility_id = row[3]
    a.facility_name = row[4]
    a.state_facility_id = row[5]
    a.facility_activity_code = row[6]
    a.facility_deactivation_date = row[7]
    a.facility_type_code = row[8]
    a.submission_status_code = row[9]
    a.is_source_ind = row[10]
    a.water_type_code = row[11]
    a.availability_code = row[12]
    a.seller_treatment_code = row[13]
    a.seller_pwsid = row[14]
    a.seller_pws_name = row[15]
    a.filtration_status_code = row[16]
    a.pws_activity_code = row[17]
    a.pws_deactivation_date = row[18]
    a.pws_type_code = row[19]
    a.is_source_treated_ind = row[20]
    a.save
    puts "#{a.id}: water_system_facility created ..."
    if a.id == @row_limit
      return
    end
  end
end

def water_system
  csv_text = File.read(Rails.root.join('lib', 'seeds', 'water_system.csv'))
  csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
  csv.each do |row|
    a = WaterSystem.new
    a.pwsid = row[0]
    a.pws_name = row[1]
    a.npm_candidate = row[2]
    a.primacy_agency_code = row[3]
    a.epa_region = row[4]
    a.season_begin_date = row[5]
    a.season_end_date = row[6]
    a.pws_activity_code = row[7]
    a.pws_deactivation_date = row[8]
    a.pws_type_code = row[9]
    a.dbpr_schedule_cat_code = row[10]
    a.cds_id = row[11]
    a.gw_sw_code = row[12]
    a.lt2_schedule_cat_code = row[13]
    a.owner_type_code = row[14]
    a.population_served_count = row[15]
    a.pop_cat_2_code = row[16]
    a.pop_cat_3_code = row[17]
    a.pop_cat_4_code = row[18]
    a.pop_cat_5_code = row[19]
    a.pop_cat_11_code = row[20]
    a.primacy_type = row[21]
    a.primary_source_code = row[22]
    a.is_grant_eligible_ind = row[23]
    a.is_wholesaler_ind = row[24]
    a.is_school_or_daycare_ind = row[25]
    a.service_connections_count = row[26]
    a.submission_status_code = row[27]
    a.org_name = row[28]
    a.admin_name = row[29]
    a.email_addr = row[30]
    a.phone_number = row[31]
    a.phone_ext_number = row[32]
    a.fax_number = row[33]
    a.alt_phone_number = row[34]
    a.address_line1 = row[35]
    a.address_line2 = row[36]
    a.city_name = row[37]
    a.zip_code = row[38]
    a.country_code = row[39]
    a.state_code = row[40]
    a.source_water_protection_code = row[41]
    a.source_protection_begin_date = row[42]
    a.outstanding_performer = row[43]
    a.outstanding_perform_begin_date = row[44]
    a.cities_served = row[45]
    a.counties_served = row[46]
    a.save
    puts "#{a.id}: water_system created ..."
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
  violation_enf_assoc
  violation
  water_system_facility
  water_system
end

@row_limit = 20

main
