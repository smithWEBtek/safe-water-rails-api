class CreateWaterSystems < ActiveRecord::Migration[5.2]
  def change
    create_table :water_systems do |t|
      t.string :pwsid
      t.string :pws_name
      t.string :npm_candidate
      t.string :primacy_agency_code
      t.string :epa_region
      t.string :season_begin_date
      t.string :season_end_date
      t.string :pws_activity_code
      t.string :pws_deactivation_date
      t.string :pws_type_code
      t.string :dbpr_schedule_cat_code
      t.string :cds_id
      t.string :gw_sw_code
      t.string :lt2_schedule_cat_code
      t.string :owner_type_code
      t.string :population_served_count
      t.string :pop_cat_2_code
      t.string :pop_cat_3_code
      t.string :pop_cat_4_code
      t.string :pop_cat_5_code
      t.string :pop_cat_11_code
      t.string :primacy_type
      t.string :primary_source_code
      t.string :is_grant_eligible_ind
      t.string :is_wholesaler_ind
      t.string :is_school_or_daycare_ind
      t.string :service_connections_count
      t.string :submission_status_code
      t.string :org_name
      t.string :admin_name
      t.string :email_addr
      t.string :phone_number
      t.string :phone_ext_number
      t.string :fax_number
      t.string :alt_phone_number
      t.string :address_line1
      t.string :address_line2
      t.string :city_name
      t.string :zip_code
      t.string :country_code
      t.string :state_code
      t.string :source_water_protection_code
      t.string :source_protection_begin_date
      t.string :outstanding_performer
      t.string :outstanding_perform_begin_date
      t.string :cities_served
      t.string :counties_served

      t.timestamps
    end
  end
end
