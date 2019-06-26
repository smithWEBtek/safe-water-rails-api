class CreateGeographicAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :geographic_areas do |t|
      t.string :pwsid
      t.string :geo_id
      t.string :primacy_agency_code
      t.string :epa_region
      t.string :pws_activity_code
      t.string :pws_type_code
      t.string :tribal_code
      t.string :state_served
      t.string :ansi_entity_code
      t.string :zip_code_served
      t.string :city_served
      t.string :area_type_code
      t.string :county_served
      
      t.timestamps
    end
  end
end
