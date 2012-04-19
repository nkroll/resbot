class CreateSkillSets < ActiveRecord::Migration
  def change
    create_table :skill_sets do |t|
      t.integer :user_id
      t.string :skill_name
      t.integer :list_order

      t.timestamps
    end
  end
end
