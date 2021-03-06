tables:
 Schema |              Name              |   Type   |   Owner
--------+--------------------------------+----------+-----------
 public | enforcement_actions            | table    | bradsmith
 public | geographic_areas               | table    | bradsmith
 public | lcr_sample_results             | table    | bradsmith
 public | lcr_samples                    | table    | bradsmith
 public | service_areas                  | table    | bradsmith
 public | treatments                     | table    | bradsmith
 public | violation_enf_assocs           | table    | bradsmith
 public | violations                     | table    | bradsmith
 public | water_system_facilities        | table    | bradsmith
 public | water_systems                  | table    | bradsmith


need to match AR database ids to friendly name ids that are apparently used to reference tables together

these csv files are still a "product" of a database, so they do not represent tha schema that created the database which output them

enforcement_actions
pwsid
enforcement_id
originator_code
enforcement_date
enforcement_action_type_code
enforcement_comment_text

geographic_areas
pwsid
geo_id
primacy_agency_code
epa_region
pws_activity_code
pws_type_code
tribal_code
state_served
ansi_entity_code
zip_code_served
city_served
area_type_code
county_served


lcr_sample_results
pwsid
sample_id
primacy_agency_code
epa_region
sar_id
contaminant_code
result_sign_code
sample_measure
unit_of_measure


lcr_samples
pwsid
sample_id
sampling_end_date
sampling_start_date
reconciliation_id
primacy_agency_code
epa_region


service_areas
pwsid
primacy_agency_code
epa_region
pws_activity_code
pws_type_code
service_area_type_code
is_primary_service_area_code


treatments
pwsid
facility_id
treatment_id
comments_text
treatment_objective_code
treatment_process_code


violation_enf_assocs
pwsid
enforcement_id
violation_id


violations
pwsid
violation_id
facility_id
population_served_count
npm_candidate
pws_activity_code
pws_deactivation_date
primary_source_code
pop_cat_5_code
primacy_agency_code
epa_region
pws_type_code
violation_code
violation_category_code
is_health_based_ind
contaminant_code
compliance_status_code
viol_measure
unit_of_measure
state_mcl
is_major_viol_ind
severity_ind_cnt
compl_per_begin_date
compl_per_end_date
latest_enforcement_id
rtc_enforcement_id
rtc_date
public_notification_tier
originator_code
sample_result_id
corrective_action_id
rule_code
rule_group_code
rule_family_code


water_system_facilities
pwsid
primacy_agency_code
epa_region
facility_id
facility_name
state_facility_id
facility_activity_code
facility_deactivation_date
facility_type_code
submission_status_code
is_source_ind
water_type_code
availability_code
seller_treatment_code
seller_pwsid
seller_pws_name
filtration_status_code
pws_activity_code
pws_deactivation_date
pws_type_code
is_source_treated_ind


water_systems
pwsid
pws_name
npm_candidate
primacy_agency_code
epa_region
season_begin_date
season_end_date
pws_activity_code
pws_deactivation_date
pws_type_code
dbpr_schedule_cat_code
cds_id
gw_sw_code
lt2_schedule_cat_code
owner_type_code
population_served_count
pop_cat_2_code
pop_cat_3_code
pop_cat_4_code
pop_cat_5_code
pop_cat_11_code
primacy_type
primary_source_code
is_grant_eligible_ind
is_wholesaler_ind
is_school_or_daycare_ind
service_connections_count
submission_status_code
org_name
admin_name
email_addr
phone_number
phone_ext_number
fax_number
alt_phone_number
address_line1
address_line2
city_name
zip_code
country_code
state_code
source_water_protection_code
source_protection_begin_date
outstanding_performer
outstanding_perform_begin_date
cities_served
counties_served
