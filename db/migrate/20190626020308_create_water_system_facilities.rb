class CreateWaterSystemFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :water_system_facilities do |t|
      t.string :pwsid
      t.string :primacy_agency_code
      t.string :epa_region
      t.string :facility_id
      t.string :facility_name
      t.string :state_facility_id
      t.string :facility_activity_code
      t.string :facility_deactivation_date
      t.string :facility_type_code
      t.string :submission_status_code
      t.string :is_source_ind
      t.string :water_type_code
      t.string :availability_code
      t.string :seller_treatment_code
      t.string :seller_pwsid
      t.string :seller_pws_name
      t.string :filtration_status_code
      t.string :pws_activity_code
      t.string :pws_deactivation_date
      t.string :pws_type_code
      t.string :is_source_treated_ind

      t.timestamps
    end
  end
end
