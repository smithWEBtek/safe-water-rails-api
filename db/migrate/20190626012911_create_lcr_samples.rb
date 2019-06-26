class CreateLcrSamples < ActiveRecord::Migration[5.2]
  def change
    create_table :lcr_samples do |t|
      t.string :pwsid
      t.string :sample_id
      t.string :sampling_end_date
      t.string :sampling_start_date
      t.string :reconciliation_id
      t.string :primacy_agency_code
      t.string :epa_region

      t.timestamps
    end
  end
end
