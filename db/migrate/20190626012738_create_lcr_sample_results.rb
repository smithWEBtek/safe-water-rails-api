class CreateLcrSampleResults < ActiveRecord::Migration[5.2]
  def change
    create_table :lcr_sample_results do |t|
      t.string :pwsid
      t.string :sample_id
      t.string :primacy_agency_code
      t.string :epa_region
      t.string :sar_id
      t.string :contaminant_code
      t.string :result_sign_code
      t.string :sample_measure
      t.string :unit_of_measure
      
      t.timestamps
    end
  end
end
