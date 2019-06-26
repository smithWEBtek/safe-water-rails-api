class CreateViolations < ActiveRecord::Migration[5.2]
  def change
    create_table :violations do |t|
      t.string :pwsid
      t.string :violation_id
      t.string :facility_id
      t.string :population_served_count
      t.string :npm_candidate
      t.string :pws_activity_code
      t.string :pws_deactivation_date
      t.string :primary_source_code
      t.string :pop_cat_5_code
      t.string :primacy_agency_code
      t.string :epa_region
      t.string :pws_type_code
      t.string :violation_code
      t.string :violation_category_code
      t.string :is_health_based_ind
      t.string :contaminant_code
      t.string :compliance_status_code
      t.string :viol_measure
      t.string :unit_of_measure
      t.string :state_mcl
      t.string :is_major_viol_ind
      t.string :severity_ind_cnt
      t.string :compl_per_begin_date
      t.string :compl_per_end_date
      t.string :latest_enforcement_id
      t.string :rtc_enforcement_id
      t.string :rtc_date
      t.string :public_notification_tier
      t.string :originator_code
      t.string :sample_result_id
      t.string :corrective_action_id
      t.string :rule_code
      t.string :rule_group_code
      t.string :rule_family_code
      
      t.timestamps
    end
  end
end
