class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.integer :user_id
      t.string :study
      t.string :institution
      t.string :institution_url
      t.string :graduation
      t.integer :list_order

      t.timestamps
    end
  end
end
