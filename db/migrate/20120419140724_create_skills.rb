class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :skill_set_id
      t.string :title
      t.integer :rank
      t.integer :list_order

      t.timestamps
    end
  end
end
