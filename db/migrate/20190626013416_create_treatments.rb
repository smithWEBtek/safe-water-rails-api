class CreateTreatments < ActiveRecord::Migration[5.2]
  def change
    create_table :treatments do |t|
      t.string :pwsid
      t.string :facility_id
      t.string :treatment_id
      t.string :comments_text
      t.string :treatment_objective_code
      t.string :treatment_process_code

      t.timestamps
    end
  end
end
