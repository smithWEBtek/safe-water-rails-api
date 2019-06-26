class CreateViolationEnfAssocs < ActiveRecord::Migration[5.2]
  def change
    create_table :violation_enf_assocs do |t|
      t.string :pwsid
      t.string :enforcement_id
      t.string :violation_id
      
      t.timestamps
    end
  end
end
