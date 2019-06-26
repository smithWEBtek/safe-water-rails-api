class CreateEnforcementActions < ActiveRecord::Migration[5.2]
  def change
    create_table :enforcement_actions do |t|
      t.string :pwsid
      t.string :enforcement_id
      t.string :originator_code
      t.string :enforcement_date
      t.string :enforcement_action_type_code
      t.text :enforcement_comment_text

      t.timestamps
    end
  end
end
