class CreateServiceAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :service_areas do |t|
      t.string :pwsid
      t.string :primacy_agency_code
      t.string :epa_region
      t.string :pws_activity_code
      t.string :pws_type_code
      t.string :service_area_type_code
      t.string :is_primary_service_area_code

      t.timestamps
    end
  end
end
